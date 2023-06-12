const std = @import("std");
const testing = std.testing;

// Sorts a slice of integers in ascending order using the QuickSort algorithm.
fn quickSort(slice: []i32) void {
    if (slice.len > 1) {
        const pivotIndex = partition(slice);
        quickSort(slice[0..pivotIndex]);
        quickSort(slice[pivotIndex + 1 ..]);
    }
}

// Partitions the input slice around a pivot element and
// returns the index of the pivot element in the partitioned slice.
fn partition(slice: []i32) usize {
    const pivot = slice[slice.len - 1];
    var i: usize = 0;
    var j: usize = 0;
    while (j < slice.len - 1) {
        if (slice[j] <= pivot) {
            swap(&slice[i], &slice[j]);
            i += 1;
        }
        j += 1;
    }
    swap(&slice[i], &slice[slice.len - 1]);
    return i;
}

// Swaps the values of two integers.
fn swap(a: *i32, b: *i32) void {
    const temp = a.*;
    a.* = b.*;
    b.* = temp;
}

test "quickSort: empty slice" {
    var array: [0]i32 = [_]i32{};
    var slice: []i32 = array[0..];
    quickSort(slice);
    try testing.expectEqualSlices(i32, &[_]i32{}, slice);
}

test "quickSort: one element" {
    var array: [1]i32 = [_]i32{1};
    var slice: []i32 = array[0..];
    quickSort(slice);
    try testing.expectEqualSlices(i32, &[_]i32{1}, slice);
}

test "quickSort: two elements" {
    var array: [2]i32 = [_]i32{ 2, 1 };
    var slice: []i32 = array[0..];
    quickSort(slice);
    try testing.expectEqualSlices(i32, &[_]i32{ 1, 2 }, slice);
}

test "quickSort: multiple elements" {
    var array: [4]i32 = [_]i32{ 4, 3, 2, 1 };
    var slice: []i32 = array[0..];
    quickSort(slice);
    try testing.expectEqualSlices(i32, &[_]i32{ 1, 2, 3, 4 }, slice);
}

test "quickSort: multiple elements with duplicates" {
    var array: [8]i32 = [_]i32{ 4, 3, 2, 1, 4, 3, 2, 1 };
    var slice: []i32 = array[0..];
    quickSort(slice);
    try testing.expectEqualSlices(i32, &[_]i32{ 1, 1, 2, 2, 3, 3, 4, 4 }, slice);
}
