#include <stdlib.h>

int main() {
    int *ptr = (int *)malloc(sizeof(int));
    free(ptr);
    *ptr = 10; // Using a pointer after freeing it
    return 0;
}
