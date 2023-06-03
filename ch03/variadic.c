#include <stdarg.h>
#include <stdio.h>

double average(int count, ...)
{
    va_list args;
    va_start(args, count);
    double sum = 0;
    for (int i = 0; i < count; i++)
    {
        double num = va_arg(args, double);
        sum += num;
    }
    va_end(args);
    return sum / count;
}

int main()
{
    double result = average(3, 2.5, 3.7, 1.3);
    printf("Average: %.2f\n", result);
    return 0;
}
