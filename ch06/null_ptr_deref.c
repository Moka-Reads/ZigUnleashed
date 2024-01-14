#include <stdio.h>

int main() {
    int *ptr = NULL;
    printf("%d\n", *ptr); // Accessing memory through a null pointer
    return 0;
}
