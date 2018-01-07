#include <alloca.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <time.h>

char stub[] = "\x48\x31\xc0\x48\x31\xdb\x48\x31\xc9\x48\x31\xd2\x48\x31\xf6\x48\x31\xff\x48\x31\xed\x4d\x31\xc0\x4d\x31\xc9\x4d\x31\xd2\x4d\x31\xdb\x4d\x31\xe4\x4d\x31\xed\x4d\x31\xf6\x4d\x31\xff";

int main(const int argc, const char** argv) {
  const char* filter = argv[1];

	unsigned char* sh = (char*)mmap(0, 0x1000, 7, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0);
	memset(sh, 0x90, 0x1000);
	memcpy(sh, stub, strlen(stub));
	
	srand(time(NULL));
	int offset = strlen(stub) + rand()%100;
	int i, j, r;

	r = read(0, sh+offset, 1000);

	for(i=0; i<r; i++){
		for(j=0; j<128; j++){
			if(sh[offset+i] == filter[j]){
				printf("caught by filter!\n");
				exit(1);
			}
		}
	}
	alloca((rand()*12345) % 1024);
	asm("jmp *%0" :: "r"(sh));
  return 0;
}
