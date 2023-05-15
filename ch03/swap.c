#include<stdio.h>
// swaps two variables using pass-by-reference 
void swap(int* a, int* b){
    // create a temporary value to store a's value 
    // to get int, dereference 
    int temp = *a;
    // store b's value to a
    *a = *b;
    // store a's value to b
    *b = temp;
}

int main(){
    int a = 20;
    int b = 56;
    printf("Before swap, a=%d, b=%d\n", a, b);
    swap(&a, &b);
    printf("After swap, a=%d, b=%d\n", a, b);
    return 0;
}