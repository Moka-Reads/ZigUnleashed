const std = @import("std");

test "single-item pointer" {
    var val: i32 = 20;
    // single item pointer
    const val_ptr: *i32 = &val;
    // to dereference pointer use .*
    try std.testing.expectEqual(val, val_ptr.*);
}

test "single-item optional pointer" {
    var val: i32 = 10;
    // single item optional pointer
    var opt_val_ptr: ?*i32 = null; // can be null
    // or a pointer
    opt_val_ptr = &val;
    // to dereference use .?.*
    try std.testing.expectEqual(val, opt_val_ptr.?.*);
}

test "multi-item pointer" {
    var array: [4]i32 = .{ 1, 2, 3, 4 };
    const pointer: [*]i32 = &array;
    // we can compare the two arrays by using the slice syntax
    // and dereference the pointer (.*)
    // cannot just compare array == ptr.* (since ptr has unknown length)
    try std.testing.expectEqual(array, pointer[0..array.len].*);
}
