base=0x5555e000
dat= [
(0x000b85e0, "execve@@GLIBC_2.0>:"  ),
(0x000b8740, "execv@@GLIBC_2.0>:"   ),
(0x000b8780, "execle@@GLIBC_2.0>:"  ),
(0x000b88e0, "execl@@GLIBC_2.0>:"   ),
(0x000b8a40, "execvp@@GLIBC_2.0>:"  ),
(0x000b8a80, "execlp@@GLIBC_2.0>:"  ),
(0x000b8bd0, "execvpe@@GLIBC_2.11>:")
]

r = range(0x20,0x80)

for d in dat:
    addr = base + d[0]
    ok = True
    for i in range(4):
        if not addr % 0x100 in r:
            ok = False
        addr /= 0x100
    if ok:
        print format(base+d[0], '02x'), d[1]
