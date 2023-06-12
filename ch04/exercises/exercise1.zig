const std = @import("std");
const testing = std.testing;

fn mergeSort(arr: []f32) void {
    if (arr.len <= 1) return;
    const mid = arr.len / 2;
    mergeSort(arr[0..mid]);
    mergeSort(arr[mid..]);
    var result = std.heap.page_allocator.alloc(f32, arr.len) catch unreachable;
    defer std.heap.page_allocator.free(result);
    var i: usize = 0;
    var j: usize = mid;
    var k: usize = 0;
    while (i < mid and j < arr.len) {
        if (arr[i] < arr[j]) {
            result[k] = arr[i];
            i += 1;
        } else {
            result[k] = arr[j];
            j += 1;
        }
        k += 1;
    }
    while (i < mid) {
        result[k] = arr[i];
        i += 1;
        k += 1;
    }
    while (j < arr.len) {
        result[k] = arr[j];
        j += 1;
        k += 1;
    }
    k = 0;
    while (k < arr.len) {
        arr[k] = result[k];
        k += 1;
    }
}

test "mergeSort: empty array" {
    var arr: [0]f32 = [_]f32{};
    mergeSort(arr[0..]);
    try testing.expectEqualSlices(f32, &arr, &[_]f32{});
}

test "mergeSort: single element" {
    var arr = [_]f32{1.0};
    mergeSort(arr[0..]);
    try testing.expectEqualSlices(f32, &arr, &[_]f32{1.0});
}

test "mergeSort: two elements" {
    var arr = [_]f32{ 2.0, 1.0 };
    mergeSort(arr[0..]);
    try testing.expectEqualSlices(f32, &arr, &[_]f32{ 1.0, 2.0 });
}

test "mergeSort: multiple elements" {
    var arr = [_]f32{ 4.0, 3.0, 2.0, 1.0 };
    mergeSort(arr[0..]);
    try testing.expectEqualSlices(f32, &arr, &[_]f32{ 1.0, 2.0, 3.0, 4.0 });
}

test "mergeSort: negative elements" {
    var arr = [_]f32{ -1.0, -2.0, -3.0 };
    mergeSort(arr[0..]);
    try testing.expectEqualSlices(f32, &arr, &[_]f32{ -3.0, -2.0, -1.0 });
}
