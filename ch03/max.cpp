#include <iostream>

// Define a function template for calculating the maximum of two values
template <typename T>
T max(T x, T y) {
    return (x > y) ? x : y;
}

int main() {
    // Declare and initialize two int variables
    int x = 3;
    int y = 4;
    // Call the max function template with int arguments
    std::cout << "The maximum of x and y is: " << max(x, y) << '\n';
    // Declare and initialize two double variables
    double a = 3.14;
    double b = 2.71;
    //  Call the max function template with double arguments
    std::cout << "The maximum of a and b is: " << max(a, b) << '\n';
    
    return 0;
}
