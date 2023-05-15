const std = @import("std");
const testing = std.testing;

fn fib(n: u64) u64 {
    // base case
    if (n == 0 or n == 1) {
        return n;
    }
    // recursively call until n = 0
    return fib(n - 1) + fib(n - 2);
}

test "fib 0" {
    const exp: u64 = 0;
    const act: u64 = fib(0);
    try testing.expectEqual(exp, act);
}

test "fib 5" {
    const exp: u64 = 5;
    const act: u64 = fib(5);
    try testing.expectEqual(exp, act);
}

test "fib 10" {
    const exp: u64 = 55;
    const act: u64 = fib(10);
    try testing.expectEqual(exp, act);
}
