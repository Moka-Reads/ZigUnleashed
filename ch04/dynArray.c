#include<stdio.h>
#include<stdlib.h>

typedef struct 
{
    int* array;
    int size;
    int capacity;
} DynamicArray;

// Initialize a dynamic array 
void init(DynamicArray* dynArray){
    dynArray->array = NULL;
    dynArray->size = 0;
    dynArray->capacity = 0;
}

// Appends an element to the back of the array 
void append(DynamicArray* dynArray, int element){
    // check if its full 
    if(dynArray->size + 1 >= dynArray->capacity){
        // get the new capacity 
        int newCap = (dynArray->capacity == 0) ? 1 : dynArray->capacity * 2;
        // create a new array using realloc with newCap
        int* newArray = realloc(dynArray->array, newCap*sizeof(int));
        // check for allocation error 
        if(newArray == NULL){
            printf("Failed to allocate memory for array");
            return;
        }
        // set the new array and capacity 
        dynArray->array = newArray;
        dynArray->capacity = newCap;
    }
    // append at the back of the list 
    dynArray->array[dynArray->size] = element;
    dynArray->size++;
}

// Removes an element from the back of the array 
int pop(DynamicArray* dynArray){
    // check if there is an element to pop 
    if(dynArray->size > 0){
        int lastElement = dynArray->array[dynArray->size - 1];
        dynArray->size--;
        return lastElement;
    } else {
        printf("Cannot pop from an empty array.\n");
        return -1; // this is to represent an error 
    }
}

// frees the array 
void deinit(DynamicArray* dynArray){
    free(dynArray->array);
    init(dynArray);
}

int main() {
    DynamicArray dynArray;
    // initialize array
    init(&dynArray);

    // Appending elements to the dynamic array
    append(&dynArray, 10);
    append(&dynArray, 20);
    append(&dynArray, 30);

    // Accessing elements in the dynamic array
    printf("Element at index 0: %d\n", dynArray.array[0]);
    printf("Element at index 1: %d\n", dynArray.array[1]);
    printf("Element at index 2: %d\n", dynArray.array[2]);

    // Popping elements from the dynamic array
    int poppedElement = pop(&dynArray);
    printf("Popped element: %d\n", poppedElement);

    // Accessing elements after popping
    printf("Element at index 0: %d\n", dynArray.array[0]);
    printf("Element at index 1: %d\n", dynArray.array[1]);

    // free the array
    deinit(&dynArray);

    return 0;
}
