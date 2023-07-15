#include<stdio.h>

typedef enum{
    Zero, 
    One, 
    Two, 
}Number;


const char* numberStr(Number num){
    switch (num)
    {
    case Zero: 
        return "Number.Zero";
        break;
    case One: 
        return "Number.One";
        break;
    case Two: 
        return "Number.Two";
        break;
    default:
        break;
    }
}

int main(){
    // Start num at zero 
    Number num = Zero;
    printf("%s => %d\n", numberStr(num), num);
    // Increment to go to One
    ++num;
    printf("%s => %d\n", numberStr(num), num);
    // Increment to go to Two
    ++num;
    printf("%s => %d\n", numberStr(num), num);

    return 0;
}