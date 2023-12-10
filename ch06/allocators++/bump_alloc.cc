#include <iostream>
#include <mutex>

// Align up utility function
size_t align_up(size_t value, size_t alignment) {
    return (value + alignment - 1) & ~(alignment - 1);
}

// BumpAllocator class
class BumpAllocator {
private:
    std::mutex mutex;
    size_t heap_start;
    size_t heap_end;
    size_t next;
    size_t allocations;

public:
    // Constructor
    BumpAllocator(size_t heap_size) : heap_start(0), heap_end(0), next(0), allocations(0) {
        init(heap_size);
    }

    // Initialize the bump allocator with the given heap bounds
    void init(size_t heap_size) {
        heap_start = reinterpret_cast<size_t>(new char[heap_size]);
        heap_end = heap_start + heap_size;
        next = heap_start;
    }

    // Allocate memory
    void* allocate(size_t size, size_t align) {
        std::lock_guard<std::mutex> lock(mutex);

        size_t alloc_start = align_up(next, align);
        size_t alloc_end = alloc_start + size;

        if (alloc_end > heap_end) {
            return nullptr; // Out of memory
        } else {
            next = alloc_end;
            allocations++;
            return reinterpret_cast<void*>(alloc_start);
        }
    }

    // Deallocate memory (not handling individual deallocations in this simple example)
    void deallocate() {
        std::lock_guard<std::mutex> lock(mutex);
        allocations--;

        if (allocations == 0) {
            next = heap_start;
        }
    }

    // Destructor
    ~BumpAllocator() {
        delete[] reinterpret_cast<char*>(heap_start);
    }
};

int main() {
    // Initialize the bump allocator with a heap size of 1024
    BumpAllocator bumpAllocator(1024);

    // Example allocations
    int* intPtr = static_cast<int*>(bumpAllocator.allocate(sizeof(int), alignof(int)));
    if (intPtr != nullptr) {
        *intPtr = 42;
        std::cout << "Allocated integer: " << *intPtr << std::endl;
    }

    double* doublePtr = static_cast<double*>(bumpAllocator.allocate(sizeof(double), alignof(double)));
    if (doublePtr != nullptr) {
        *doublePtr = 3.14;
        std::cout << "Allocated double: " << *doublePtr << std::endl;
    }

    // Example deallocation (not handling individual deallocations in this simple example)
    bumpAllocator.deallocate();

    return 0;
}
