.intel_syntax noprefix
.section .data
.section .text
.globl _start
_start:
add al, al
add eax, eax
add al, 42

or al, al
or eax, eax
or al, 42

push rax
push rcx
push rdx
push rbx
push rsp
push rbp
push rsi
push rdi

pop rax
pop rcx
pop rdx
pop rbx
pop rsp
pop rbp
pop rsi
pop rdi

clc
stc

inc al
dec al

inc eax
dec eax

call rax
jmp rax

ret

lea rsp, [rip]

call hoge
jmp piyo

hoge:
	mov rax, [rsp]
	ret

piyo:
	nop


push 0x12345678
pushw ax	# 66 50

pushw 0xff34	# 66 68 34 ff
pushw 65332	# 66 68 34 12

push rax

add rax, 0x7fffffff

