#include <stdio.h>
typedef union  {
    int a;
    float b;
}myUnion;

void print_all_members(myUnion *mu){
    printf("a %d\n", mu->a);
    printf("b %f\n", mu->b);
    printf("-----------\n");
}
int main() {
    myUnion mu;
    mu.a = 432;
    print_all_members(&mu);
    mu.b = -20.5;
    print_all_members(&mu);
    return 0;
}