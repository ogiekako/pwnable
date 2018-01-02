#include <unistd.h>
int main() {
  execve("x", NULL, NULL);
}
