#include<stdio.h>
#include<stdlib.h>

int main()
{
    int* dynArray = malloc(10*sizeof(int));
    for(int i = 0; i < 10; i++){
        dynArray[i] = i * 2;
    }
    printf("[");
    for(int i = 0; i < 9; i++){
        printf("%d, ", dynArray[i]);
    }
    printf("%d]", dynArray[9]);
    free(dynArray);
    return 0;
}