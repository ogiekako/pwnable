
solve:     file format elf64-x86-64


Disassembly of section .text:

000000000040010c <main>:
  40010c:	55                   	push   %rbp
  40010d:	48 89 e5             	mov    %rsp,%rbp
  400110:	48 83 ec 08          	sub    $0x8,%rsp
  400114:	48 c7 45 f8 98 01 40 	movq   $0x400198,-0x8(%rbp)
  40011b:	00 
  40011c:	b9 02 00 00 00       	mov    $0x2,%ecx
  400121:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400125:	be 00 00 00 00       	mov    $0x0,%esi
  40012a:	48 89 c8             	mov    %rcx,%rax
  40012d:	48 89 d7             	mov    %rdx,%rdi
  400130:	48 89 f6             	mov    %rsi,%rsi
  400133:	0f 05                	syscall 
  400135:	48 89 c2             	mov    %rax,%rdx
  400138:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  40013c:	be 00 00 00 00       	mov    $0x0,%esi
  400141:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400145:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
  400149:	41 b8 64 00 00 00    	mov    $0x64,%r8d
  40014f:	48 89 f0             	mov    %rsi,%rax
  400152:	48 89 d7             	mov    %rdx,%rdi
  400155:	48 89 ce             	mov    %rcx,%rsi
  400158:	4c 89 c2             	mov    %r8,%rdx
  40015b:	0f 05                	syscall 
  40015d:	48 89 c2             	mov    %rax,%rdx
  400160:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400164:	be 01 00 00 00       	mov    $0x1,%esi
  400169:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  40016f:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
  400173:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  400177:	48 89 f0             	mov    %rsi,%rax
  40017a:	4c 89 c7             	mov    %r8,%rdi
  40017d:	48 89 d6             	mov    %rdx,%rsi
  400180:	48 89 ca             	mov    %rcx,%rdx
  400183:	0f 05                	syscall 
  400185:	b8 3c 00 00 00       	mov    $0x3c,%eax
  40018a:	48 89 c0             	mov    %rax,%rax
  40018d:	0f 05                	syscall 
  40018f:	b8 00 00 00 00       	mov    $0x0,%eax
  400194:	c9                   	leaveq 
  400195:	c3                   	retq   
