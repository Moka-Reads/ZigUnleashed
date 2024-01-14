#include <stdio.h>

void recursiveFunction(int count) {
    printf("Count: %d\n", count);
    recursiveFunction(count + 1);
}

int main() {
    recursiveFunction(1);
    return 0;
}
