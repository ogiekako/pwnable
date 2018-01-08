#!/usr/bin/env python
import pwn

R = ['eax', 'ebx', 'ecx', 'edx', 'ebp', 'esi', 'edi']


def asm(s):
    return pwn.asm(s, arch='i386')


def is_ascii(c):
    return 0x20 <= c and c < 0x80


def print_if_valid(s):
    a = asm(s)
    for c in list(a):
        if not is_ascii(c):
            return
    print s


for r in R:
    print_if_valid('xor dword ptr [esp], %s' % r)
