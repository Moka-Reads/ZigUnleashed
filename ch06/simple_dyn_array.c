#include<stdio.h>
#include<stdlib.h>

int main()
{
    // create a dynamic array of size 10
    int* dynArray = malloc(10*sizeof(int));
    
    for(int i = 0; i < 10; i++){
        // assign each element twice of index value
        dynArray[i] = i * 2;
    }

    printf("[");
    // print each element except last 
    for(int i = 0; i < 9; i++){
        printf("%d, ", dynArray[i]);
    }
    // print last element with closing bracket
    printf("%d]", dynArray[9]);

    // free array to avoid memory leak
    free(dynArray);
    return 0;
}
