#!/usr/bin/env python

"""
Compute distribution With monte carlo
"""

import random
import subprocess
import sys

import solve

random.seed(1)

def shuffle(a):
    n = len(a)
    for i in range(n-1):
        j = random.randint(0, n-1)
        t = a[j]
        a[j] = a[i]
        a[i] = t


def test(shellcode, filt):
    f = open('/tmp/a.s', 'w+')
    code = '''.intel_syntax noprefix
    .section .data
    .section .text
    .globl _start
    _start:
'''
    code += shellcode
    code += '. = _start + 0x1000\n'
    f.write(code)
    f.close()

    subprocess.check_call(['gcc', '-W', '-N', '-m64', '-nostdlib', '-static', '-o', '/tmp/a.out', '/tmp/a.s'])

    exp = 'This is the flag!'
    s = subprocess.check_output(['/tmp/a.out'])[0:len(exp)]
    if s != exp:
        print "Failed %s" % s
        exit(1)


it = 300
success = 0
remain = list(range(256))
for i in range(it):
    if i % 50 == 0:
        print '%d/%d' % (i, it)
    a = list(range(256))
    shuffle(a)
    filt = ''.join([chr(x) for x in a[0:128]])
    flag = subprocess.check_output('./genflag').strip()

    shellcode = solve.Solver(filt, flag).gen_shellcode()
    if not shellcode:
        continue
    success += 1
    print 'Success! %d/%d' % (success, i)

    test(shellcode, filt)

print "PASS: %d/%d" % (success, it)
