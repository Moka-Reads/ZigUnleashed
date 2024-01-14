#include <stdio.h>
#include <string.h>

int main() {
    char buffer[5];
    strcpy(buffer, "Overflow Example");
    printf("%s\n", buffer);
    return 0;
}
