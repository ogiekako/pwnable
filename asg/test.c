#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
  int fd = open("flag", 0, 0);
  if (fd < 0) {
    perror("open");
    exit(1);
  }
  exit(0);
}
