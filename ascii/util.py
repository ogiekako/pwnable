#!/usr/bin/env python

import subprocess
import os


def as_bytes(s):
    s += '\x00'
    step = 4
    while len(s) % step != 0:
        s += '\x00'

    vs = []
    for i in reversed(range(0, len(s), step)):
        v = 0
        for j in reversed(range(step)):
            v *= 0x100
            v += ord(s[i + j])
        vs.append(v)
    return vs


def gen_out(shellcode):
    f = open('/tmp/a.s', 'w+')
    code = '''.intel_syntax noprefix
    .section .data
    .section .text
    .globl _start
    _start:
'''
    code += shellcode
    f.write(code)

    f.close()

    subprocess.check_call([
        'gcc', '-z', 'execstack', '-m32', '-nostdlib', '-static', '-o',
        '/tmp/a.out', '/tmp/a.s'
    ])


def run(shellcode):
    gen_out(shellcode)
    return subprocess.check_output(['/tmp/a.out'])


def execute(shellcode):
    gen_out(shellcode)
    os.execve('/tmp/a.out', [], {})
