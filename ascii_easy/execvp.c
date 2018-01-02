#include <unistd.h>

int main() {
 //execvp("", NULL);

	char* arg[1] = {NULL};
	execvpe("x", arg, arg);
}
