#include <stdio.h>

extern size_t strlen(const char* str);

int main(void)
{
	char* str = "Some text";
	printf("String `%s` is %lu characters long\n", str, strlen(str));
	return 0;
}
