#!/usr/bin/env python

import io

def is_valid(s):
    for c in s:
        if not is_ascii(ord(c)):
            return False
        # if (c < 'a' or 'z' < c) and (c < 'A' or 'Z' < c):
        #     return False
    return True

def is_ascii(c):
    return 0x20 <= c and c <= 0x7f

def is_ascii_addr(addr):
    for i in range(4):
        if not is_ascii(addr%256):
            return False
        addr /= 256
    return True

s = io.open('libc-2.15.so', 'br').read()
base = 0x5555e000

n = len(s)
i = 0
j = 0
while i < n:
    j = i
    while j < n and ord(s[j]) != 0:
        j+=1
    t = s[i:j]
    addr = base + i
    if i < j and j < n and is_ascii_addr(addr) and is_valid(t):
        print "str",format(addr, '02x'), t
    i = j + 1
    
i = 0
while i < n:
    addr = base + i
    if is_ascii_addr(addr):
        ok = True
        for j in range(4):
            ok &= ord(s[i + j]) == 0
        if ok:
            print "null", format(addr, '02x')
    i += 4
