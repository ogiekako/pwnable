- [coder64 edition | X86 Opcode and Instruction Reference 1.12](http://ref.x86asm.net/coder64.html)
- [Encoding Real x86 Instructions](http://www.c-jump.com/CIS77/CPU/x86/lecture.html#X77_0130_encoding_add_cl_al)

00c0: add al, al
01c0: add eax, eax
02c0: add al, al
03c0: add eax, eax
04XX: add al, 0xXX

66 05 34 12: add ax 0x1234

08c0: or al, al
09c0: or eax, eax
0ac0: or al, al
0bc0: or eax, eax
0cXX: or al, 0xXX

20c0: and al, al
21c0: and eax, eax
22c0: and al, al
23c0: and eax, eax
24XX: and al, 0xXX

28c0: sub al, al
29c0: sub eax, eax
2ac0: sub al, al
2bc0: sub eax, eax
2cXX: sub al, 0xXX

30c0: xor al, al
30e4: xor ah, ah
31c0: xor eax, eax
32c0: xor al, al
33c0: xor eax, eax
34XX: xor al, 0xXX

50: push rax
51: push rcx
52: push rdx
53: push rbx
54: push rsp
55: push rbp
56: push rsi
57: push rdi

6650: pushw ax

58: pop rax
59: pop rcx
5a: pop rdx
5b: pop rbx
5c: pop rsp
5d: pop rbp
5e: pop rsi
5f: pop rdi

81 e8 42 42 42 42: sub eax, 0x42424242

89 04 24: mov [rsp], eax

b8 34 12 00 00 : mov eax, 0x1234
66 b8 34 12 : mov ax, 0x1234

c3: ret

68 78 56 34 12: push 0x12345678
66 68 34 12: pushw 0x1234
66 50: push ax

e8 02 00 00 00: call 2 bytes next
eb 01: call 1 byte next

f8: clc  clear carry flag
f9: stc  set carry flag

fec0: inc al
fec4: inc ah
fec8: dec al
fecc: dec ah
ffc0: inc eax
ffc8: dec eax

ffd0: call rax
ffe0: jmp rax
ffe4: jmp rsp

48 8d 25 00 00 00 00: lea rsp, [rip+0x0]

## Prefix

48 - 64 bit
66 - 16 bit

## Syscall

32 bit
```
eax, ebx, ecx, edx

syscall:
exit: 1, err_code
read: 3, fd, *buf, count
write: 4, fd, *buf, count
open: 5, *filename, flags, mode
```

64 bit
```
rax, rdi, rsi, rdx (64)

syscall:
exit: 60, err_code
read: 0, fd, *buf, count
write: 1, fd, *buf, count
open: 2, *filename, flags, mode
```
