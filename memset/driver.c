#include <stdio.h>

void *memset(void *s, int c, size_t n);

void
print_array(char *arr, size_t size)
{
	printf("{ ");

	for (int i = 0; i < size - 1; i++) {
		printf("%d, ", arr[i]);
	}
	printf("%d", arr[size-1]);

	printf(" }\n");
}

int
main(void)
{
	char arr[] = {1, 2, 3, 10, 24, 30};

	printf("Array before memset: ");
	print_array(arr, sizeof arr);

	memset(arr, 0, sizeof arr);

	printf("Array after: ");
	print_array(arr, sizeof arr);

	return 0;
}
