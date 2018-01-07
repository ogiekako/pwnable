#!/usr/bin/env python

import gen
import subprocess

def test(b):
    f = open('/tmp/a.s', 'w+')
    code = '''.intel_syntax noprefix
    .section .data
    .section .text
    .globl _start
    _start:
'''
    code += gen.shellcode('flag', b)
    f.write(code)

    f.close()

    subprocess.check_call(['gcc', '-z', 'execstack', '-m%d' % b, '-nostdlib', '-static', '-o', '/tmp/a.out', '/tmp/a.s'])

    s = subprocess.check_output(['/tmp/a.out']).replace('\x00', '').strip()
    if s != 'This is the flag!':
        print "Failed %d %s" % (b, s)
        exit(1)

test(32)
test(64)
print "OK"

