#include <stdio.h>

int main() {
	int a, b, c;
	int arr[2001] = { 0 };
	scanf("%d", &a); // 배열 길이 

	for (b = 0; b < a; b++) {
		scanf("%d", &c);
		arr[c + 1000] = 1; 
	}

	for (b = 0; b <= 2000; b++) {
		if (arr[b] != 0) { 
			printf("%d ", b - 1000);
		}
	}
}