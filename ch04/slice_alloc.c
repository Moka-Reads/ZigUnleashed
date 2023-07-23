#include<stdio.h>
#include<stdlib.h>
typedef struct { // A structure to represent a slice in Zig
    int* ptr; // a dynamic array
    size_t len; // the length the slice takes
} Slice;
// Creates a new slice given a specified length
Slice createSlice(size_t length){
    // allocate memory for our pointer given the length 
    int* ptr = malloc(length * sizeof(int));
    // create an unitialized slice 
    Slice slice; 
    // set the ptr of the slice to `ptr'
    slice.ptr = ptr; 
    // set the length to our given length
    slice.len = length; 
    return slice;
}
// Frees the slice and makes it empty 
void freeSlice(Slice* slice){
    free(slice->ptr); // free the pointer in our slice 
    slice->ptr = NULL; // set it back to NULL
    slice->len = 0; // set the length to 0 
}

int main(){
    // create a slice that allocates a size of 5
    Slice slice = createSlice(5); 
    // assign values to the elements of the slice 
    for(size_t i = 0; i < slice.len; i++){ slice.ptr[i] = i + 1; }
    // print the values 
    for(size_t i = 0; i < slice.len; i++){ printf("%d ", slice.ptr[i]); }
    printf("\n");
    // free the slice at the end of the scope 
    freeSlice(&slice);
    return 0;
}