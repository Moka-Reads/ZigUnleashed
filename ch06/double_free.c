#include <stdlib.h>

int main() {
    int *ptr = (int *)malloc(sizeof(int));
    free(ptr);
    free(ptr); // Double-freeing the same memory
    return 0;
}
