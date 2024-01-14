#include <stdlib.h>

int main() {
    int *ptr = (int *)malloc(sizeof(int));
    free(ptr);
    printf("%d\n", *ptr); // Accessing memory through a dangling pointer
    return 0;
}
