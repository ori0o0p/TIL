#include <stdio.h>

int main() {
	int A, B, V, s = 0;
	scanf("%d %d %d", &A, &B, &V);
	s = (V - B - 1) / (A - B);
	printf("%d", s + 1);
	return 0;
}
