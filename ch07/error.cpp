#include <iostream>
using namespace std;
int main() {
    try {
        // Code that may throw an exception
        throw runtime_error("An error occurred");
    } catch (const exception& e) {
        // Handle the exception
        cout << "Exception caught: " << e.what() << endl;
    }

    return 0;
}
