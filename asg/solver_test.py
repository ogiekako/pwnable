#!/usr/bin/env python
"""
Compute distribution With monte carlo
"""

import random
import subprocess
import sys

import solver

random.seed(1)

HEADER = '''.intel_syntax noprefix
    .section .data
    .section .text
    .globl _start
    _start:
'''

PASSWORD = 'This is the flag!'


def error(msg):
    sys.stderr.write(msg)
    exit(1)


def run(shellcode):
    f = open('/tmp/a.s', 'w+')
    code = HEADER
    code += shellcode
    code += '. = _start + 0x1000\n'
    f.write(code)
    f.close()

    subprocess.check_call([
        'gcc', '-W', '-N', '-m64', '-nostdlib', '-static', '-o', '/tmp/a.out',
        '/tmp/a.s'
    ])

    return subprocess.check_output(['/tmp/a.out'])


def shuffle(a):
    n = len(a)
    for i in range(n - 1):
        j = random.randint(0, n - 1)
        t = a[j]
        a[j] = a[i]
        a[i] = t


def test(shellcode, filt):
    f = open('/tmp/a.s', 'w+')
    code = HEADER
    code += shellcode
    code += '. = _start + 0x1000\n'
    f.write(code)
    f.close()

    subprocess.check_call([
        'gcc', '-W', '-N', '-m64', '-nostdlib', '-static', '-o', '/tmp/a.out',
        '/tmp/a.s'
    ])

    s = run(shellcode)[0:len(PASSWORD)]
    if s != PASSWORD:
        print "Failed %s" % s
        exit(1)


def set_rsp_stupid():
    return 'lea rsp, [rip + 0x500]\n'


def push_shellcode_stupid():
    # FIXME
    error("not implemented")
    exit(1)


def jmp_rsp_stupid():
    return 'jmp rsp\n'


def verify_push_shellcode(code):
    shellcode = set_rsp_stupid() + code + jmp_rsp_stupid()
    if run(shellcode)[0:len(PASSWORD)] != PASSWORD:
        error('Fail: verify_push_shellcode\n')


nset = 0
npush = 0
njmp = 0

it = 100
success = 0
remain = list(range(256))
for i in range(it):
    if i % 50 == 0:
        print '%d/%d' % (i, it)
    a = list(range(256))
    shuffle(a)
    filt = ''.join([chr(x) for x in a[0:128]])
    flag = subprocess.check_output('./genflag').strip()

    solver.init(filt, flag)

    s1 = solver.set_rsp()
    if s1:
        nset += 1
    s2 = solver.push_shellcode()
    if s2:
        if npush < 5:
            verify_push_shellcode(s2)
        npush += 1
    s3 = solver.jmp_rsp()
    if s3:
        njmp += 1

    if s1 and s2 and s3:
        shellcode = solver.gen_shellcode(filt, flag)
        if not shellcode:
            sys.stderr.write('Internal error: gen_shellcode\n')
            exit(1)
        success += 1

        test(shellcode, filt)
        print 'Success! %d/%d' % (success, i)

print 'set_rsp: %d/%d' % (nset, it)
print 'push_shellcode: %d/%d' % (npush, it)
print 'jmp_rsp: %d/%d' % (njmp, it)
print "gen_shellcode: %d/%d" % (success, it)
