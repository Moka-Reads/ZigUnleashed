const std = @import("std");

// Define a Vector struct with generic type T
pub fn Vector(comptime T: type) type {
    return struct {
        // Memory allocator for the vector
        allocator: *std.mem.Allocator,
        // Array of items of type T
        items: []T = &.{},
        // Current length of the vector
        len: usize = 0,
        // Current capacity of the vector
        cap: usize = 0,

        const Self = @This();
        // Factor by which to grow the vector when it's full
        const growFactor: usize = 2;

        // Initialize a new vector with a given allocator
        pub fn init(allocator: *std.mem.Allocator) Self {
            return .{ .allocator = allocator };
        }

        // Deinitialize the vector, freeing its memory
        pub fn deinit(self: *Self) void {
            self.allocator.free(self.items);
        }

        // Check if the vector is full and grow it if necessary
        fn should_grow(self: *Self) !void {
            if (self.len >= self.cap) {
                self.cap = @max(growFactor * self.cap, 1);
                self.items = try self.allocator.realloc(self.items, self.cap);
            }
        }

        // Append an item to the end of the vector
        pub fn append(self: *Self, item: T) !void {
            try self.should_grow();
            self.items[self.len] = item;
            self.len += 1;
        }

        // Insert an item at a specific index in the vector
        pub fn insert(self: *Self, item: T, index: usize) !void {
            try self.should_grow();
            if (index >= self.cap) {
                return;
            }
            self.items[index] = item;
            self.len += 1;
        }

        // Delete an item at a specific index in the vector
        pub fn delete(self: *Self, index: usize) void {
            if (index >= self.len) return;

            for (index..self.len - 1) |i| {
                self.items[i] = self.items[i + 1];
            }

            self.len -= 1;
        }

        // Remove and return the last item in the vector
        pub fn pop(self: *Self) ?T {
            if (self.len == 0) {
                return null;
            } else {
                self.len -= 1;
                return self.items[self.len];
            }
        }
    };
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var allocator = gpa.allocator();
    var array = Vector(i32).init(&allocator);
    defer {
        const deinit_status = gpa.deinit();
        if (deinit_status == .leak) @panic("Memory Leak!");
        array.deinit();
    }

    try array.append(1);
    try array.append(2);
    try array.insert(32, 2);
    try array.append(3);
    array.delete(1);

    for (array.items[0..array.len]) |item| {
        std.debug.print("Item: {}\n", .{item});
    }
    for (0..array.len) |_| {
        std.debug.print("Popped: {any}\n", .{array.pop()});
    }
}
