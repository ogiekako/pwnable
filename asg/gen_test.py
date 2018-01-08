#!/usr/bin/env python

import gen
import solve
import subprocess

def test(flag, b):
    f = open('/tmp/a.s', 'w+')
    code = '''.intel_syntax noprefix
    .section .data
    .section .text
    .globl _start
    _start:
'''
    shellcode = gen.shellcode(flag, b)
    code += shellcode
    f.write(code)

    f.close()

    subprocess.check_call(['gcc', '-z', 'execstack', '-m%d' % b, '-nostdlib', '-static', '-o', '/tmp/a.out', '/tmp/a.s'])

    s = subprocess.check_output(['/tmp/a.out']).replace('\x00', '').strip()
    if s != 'This is the flag!':
        print "Failed %d %s" % (b, s)
        exit(1)
    print 'OK %d, len: %d' % (b, len(gen.asmit(shellcode, b)))

flag = subprocess.check_output(['./genflag']).strip()
test(flag, 32)
flag = subprocess.check_output(['./genflag']).strip()
test(flag, 64)

