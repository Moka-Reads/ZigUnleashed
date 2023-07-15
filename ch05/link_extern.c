#include <stdio.h>
#include <stdint.h>

// Define the same extern struct in C
typedef struct {
    uint8_t a;
    uint16_t b;
    uint8_t c;
} ExternStruct;

// Declare the Zig function
extern ExternStruct send_struct();

int main() {
    // Call the Zig function
    ExternStruct result = send_struct();

    // Print the result
    printf("a: %d\n", result.a);
    printf("b: %d\n", result.b);
    printf("c: %d\n", result.c);

    return 0;
}
