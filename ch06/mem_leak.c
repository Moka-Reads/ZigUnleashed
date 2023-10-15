#include <stdio.h>
#include <stdlib.h>

void print_pointer_value(int *ptr)
{
    printf("The value of the pointer is: %p\n", ptr);
}

int main()
{
    int *ptr = malloc(sizeof(int)*10);
    // do something with ptr
    print_pointer_value(ptr);
    // wait we never freed????
    return 0;
}