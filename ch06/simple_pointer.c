#include<stdio.h>

int main(){
    int val = 45;
    int* ptr = &val;

    printf("Val = %d\n", val);
    printf("Memory address of val: %p\n", ptr);
    printf("Value of ptr = %d\n", *ptr);

    return 0;
}