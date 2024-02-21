#include <iostream>

void divide(int a, int b) {
    if (b == 0) {
        throw std::runtime_error("Division by zero");
    }
    int result = a / b;
    std::cout << "Result: " << result << std::endl;
}

int main() {
    try {
        divide(10, 0);
    } catch (const std::exception& e) {
        std::cout << "Exception caught: " << e.what() << std::endl;
    }
    return 0;
}
