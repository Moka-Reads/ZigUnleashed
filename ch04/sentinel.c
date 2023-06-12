#include <stdio.h>

#define SENTINEL 255

int main() {
    int array[] = { 1, 2, 3, 4, 5, SENTINEL };
    for (int i = 0; array[i] != SENTINEL; i++) {
        printf("%d ", array[i]);
    }
    return 0;
}