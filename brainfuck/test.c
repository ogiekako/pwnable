#include <stdio.h>
int main() {
	int a = 0;

	printf("%p ", &a);
	((void (*)(void))&a)();

	for (int i=0;i<100;i++) {
		a += i;
	}
	printf("%d\n", a);
}
