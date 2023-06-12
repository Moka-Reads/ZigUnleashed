#include<stdio.h>

int main(){
    int value = 3;
    switch (value) {
    case 1: printf("Value is 1");
        break;
    case 2: printf("Value is 2");
        break;
    case 3: printf("Value is 3");
        break;
    default: printf("Invalid value");
        break;
    }
    return 0;
}