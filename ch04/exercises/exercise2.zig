const std = @import("std");
const testing = std.testing;

fn filterArray(arr: []const i32, threshold: i32) []const i32 {
    var result = std.ArrayList(i32).init(std.heap.page_allocator);
    defer result.deinit();
    for (arr) |value| {
        if (value > threshold) {
            result.append(value) catch unreachable;
        }
    }
    return result.toOwnedSlice();
}

test "filterArray: empty array" {
    var arr: [0]i32 = [_]i32{};
    const result = filterArray(arr[0..], 0);
    defer std.heap.page_allocator.free(result);
    try testing.expectEqualSlices(i32, result, &[_]i32{});
}

test "filterArray: single element" {
    var arr = [_]i32{1};
    const result = filterArray(arr[0..], 0);
    defer std.heap.page_allocator.free(result);
    try testing.expectEqualSlices(i32, result, &[_]i32{1});
}

test "filterArray: multiple elements" {
    var arr = [_]i32{1, 2, 3, 4};
    const result = filterArray(arr[0..], 2);
    defer std.heap.page_allocator.free(result);
    try testing.expectEqualSlices(i32, result, &[_]i32{3, 4});
}

test "filterArray: no elements greater than threshold" {
    var arr = [_]i32{1, 2, 3};
    const result = filterArray(arr[0..], 4);
    defer std.heap.page_allocator.free(result);
    try testing.expectEqualSlices(i32, result, &[_]i32{});
}