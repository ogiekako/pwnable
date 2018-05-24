hexdump -C tiny

```
00000000  7f 45 4c 46 01 01 01 00  00 00 00 00 00 00 00 00  |.ELF............|   # header
00000010  02 00 03 00 01 00 00 00  74 80 04 08 34 00 00 00  |........t...4...|
00000020  00 00 00 00 00 00 00 00  34 00 20 00 02 00 00 00  |........4. .....|
00000030  00 00 00 00 01 00 00 00  00 00 00 00 00 80 04 08  |................|
00000040  00 80 04 08 7c 00 00 00  7c 00 00 00 05 00 00 00  |....|...|.......|
00000050  00 10 00 00 51 e5 74 64  00 00 00 00 00 00 00 00  |....Q.td........|
00000060  00 00 00 00 00 00 00 00  00 00 00 00 06 00 00 00  |................|
00000070  10 00 00 00 58 5a 8b 12  ff d2                    |....XZ....|
0000007a
```
# -- 0x00 --  (elf header)
 7f 45 4c 46   # ELF
 01            # 32 or 64 bit format (32)
 01            # endianness (little endian)
 01            # original version of elf (original)
 00            # operating system (System V)
 00            # ABI version (no meaning?)
 00 00 00 00 00 00 00 # unused
 02 00         # relocatable, executable, shared or core
 03 00         # machine (x86)
 01 00 00 00   # version (original)
 74 80 04 08   # entry point
 34 00 00 00   # start of the program hader table
 00 00 00 00   # start of the section header table.
 00 00 00 00   # e_flags (usage depends on the target arch)
 34 00         # size of this header (52 bytes)
 20 00         # size of a program header table entry
 02 00         # the number of entries in the program header table
 00 00         # the size of a section hader table entry
 00 00         # the number of entries in the section header table.
 00 00         # index of the section header table entry that contains the section names.
# -- 0x34 --
 01 00 00 00   # p_type: type of the segment (PT_LOAD)
 00 00 00 00   # p_offset: offset of the segment in the file image.
 00 80 04 08   # p_vaddr: Virtual address of the segment in memory.
 00 80 04 08   # On systems where physical address is relevant, reserved for segment's physical address.
 7c 00 00 00   # Size in bytes of the segment in the file image. May be 0.
 7c 00 00 00   # Size in bytes of the segment in memory. May be 0.
 05 00 00 00   # Segment-dependent flags (r-e).
 00 10 00 00   # 0 and 1 specify no alignment. Otherwise should be a positive, integral power of 2, with p_vaddr equating p_offset modulus p_align.
# -- 0x34 + 0x20 --
 51 e5 74 64   # p_type: GNU_STACK
 00 00 00 00
 00 00 00 00
 00 00 00 00
 00 00 00 00
 00 00 00 00
 06 00 00 00   # rw- (stack not executable)
 10 00 00 00
# -- 0x34 + 0x20 * 2  = 0x74
 58 5a 8b 12 ff d2 # program

pop eax        # argc
pop edx        # argv[0]
mov edx, [edx]
call edx

# load location

```
$ readelf -a tiny
ELF Header:
...
  Entry point address:               0x8048074
...

There are no sections in this file.

There are no sections to group in this file.

Program Headers:
  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
  LOAD           0x000000 0x08048000 0x08048000 0x0007c 0x0007c R E 0x1000
  GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RW  0x10
...
```

  Entry point address:               0x8048074

ASLR は有効なので、vvar, vdso, stack のアドレスは毎回変わる。ただ、8 bit の範囲でしか変わらないので、brute force は有効
pwnable のサーバでは
`ulimit -s unlimited` により aslr を無効化できるのかと思ったがそんなことはなかった

```
gdb-peda$ vmmap
Start      End        Perm      Name
0x08048000 0x08049000 r-xp      /home/tiny/tiny
0x5556f000 0x55571000 r--p      [vvar]
0x55571000 0x55573000 r-xp      [vdso]
0xffb6d000 0xffb8e000 rw-p      [stack]
gdb-peda$
```

```
tiny@ubuntu:~$ uname -a
Linux ubuntu 4.10.0-999-generic #201703012101 SMP Thu Mar 2 02:04:03 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
```

execve 11 なので、
eax = 11
ebx = "/bin/sh"
として syscall を呼べれば良い

eax は, argc を 11 にすればよいだけなので、 ebx が問題
```
   0x5557196e <__vdso_clock_gettime+318>:       add    esp,0x1c
   0x55571971 <__vdso_clock_gettime+321>:       pop    ebx
   0x55571972 <__vdso_clock_gettime+322>:       pop    esi
   0x55571973 <__vdso_clock_gettime+323>:       pop    edi
   0x55571974 <__vdso_clock_gettime+324>:       pop    ebp
   0x55571975 <__vdso_clock_gettime+325>:       ret
```
という gadget が見つかる。
これをつかって、ebx が "/bin/sh" を指すようにしてから
```
   0x55571d28:  syscall
```
を呼べればよい


Stack には、環境変数のあとに、ELF auxiliary vector[^](http://articles.manugarg.com/aboutelfauxiliaryvectors) が存在する

AT_SYSINFO として、__kernel_vsyscall へのポインタが存在することがわかるので、これに対して ret させればよい
