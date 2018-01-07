Set up test server:
gcc -o my_asg my_asg.c -lseccomp
socat TCP4-LISTEN:9025,fork EXEC:my_asg


syscall:
0f05

registers: [1]

0  rax
1  rcx
2  rdx
3  rbx
4  rsp
5  rbp
6  rsi
7  rdi
8  r8
9  r9
a  r10
b  r11
c  r12
d  r13
e  r14
f  r15

rax, rdi, rsi, rdx, rcx

syscall: [3]

rax: syscall index
0  sys_read
  rdi: fd          # it's already 0
  rsi: rip         # lea rsi, [rip]
  rdx: large value # add rdx, 0x350000'
1  sys_write
  rdi: fd
  rsi: `*buf`
  rdx: count
2  sys_open
  rdi: path
  rsi: 0  # O_RDONLY
  rdx: 0
40  send_file  # restricted!!
  rdi: out_fd
  rsi: in_fd
  rdx: offset (`*off_t`)
  r10: count

O_RDONLY	0x0000 [5]

RBX, RBP, and R12–R15 are callee saved. [4]

rasm2 -a x86.as -b 64 'lea rsi, [rip]'

In most processors, the PC is incremented after fetching an instruction,
and holds the memory address of ("points to") **the next instruction** that
would be executed. [4]

# References

[1] x86 register encoding:
https://eklitzke.org/x86-register-encoding

[2] http://www.c-jump.com/CIS77/CPU/x86/lecture.html

[3] http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/

[4] https://en.wikipedia.org/wiki/Program_counter

[5] http://www.delorie.com/djgpp/doc/incs/fcntl.h

