#!/usr/bin/env python

import gen
import subprocess


def run(shellcode):
    f = open('/tmp/a.s', 'w+')
    code = '''.intel_syntax noprefix
    .section .data
    .section .text
    .globl _start
    _start:
    %s
    . = _start + 0x1000
''' % shellcode
    f.write(code)

    f.close()

    subprocess.check_call([
        'gcc', '-z', 'execstack', '-m32', '-nostdlib', '-static', '-o',
        '/tmp/a.out', '/tmp/a.s'
    ])

    return subprocess.check_output(['/tmp/a.out'])


run(gen.gen())
