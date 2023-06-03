const std = @import("std");

fn factorial(comptime T: type, n: T) T {
    var result: T = 1;
    var i: T = 2;
    while (i <= n) : (i += 1) {
        result *= i;
    }
    return result;
}

test "factorial - u32" {
    const expected: u32 = 120;
    const actual: u32 = factorial(u32, 5);
    try std.testing.expectEqual(expected, actual);
    
    const expected2: u32 = 720;
    const actual2: u32 = factorial(u32, 6);
    try std.testing.expectEqual(expected2, actual2);
}

test "factorial - u64" {
    const expected: u64 = 120;
    const actual: u64 = factorial(u64, 5);
    try std.testing.expectEqual(expected, actual);
    
    const expected2: u64 = 720;
    const actual2: u64 = factorial(u64, 6);
    try std.testing.expectEqual(expected2, actual2);
}
