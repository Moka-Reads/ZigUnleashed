#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *file = fopen("nonexistent_file.txt", "r");
    if (file == NULL) {
        perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    // Do something with file 

    fclose(file);
    return 0;
}
