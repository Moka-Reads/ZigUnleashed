const std = @import("std");

/// Define a Vector struct with generic type T
pub fn Vector(comptime T: type) type {
    return struct {
        /// Memory allocator for the vector
        allocator: *std.mem.Allocator,
        /// Array of items of type T
        items: []T = &.{},
        /// Current length of the vector
        len: usize = 0,
        /// Current capacity of the vector
        cap: usize = 0,

        const Self = @This();
        /// Factor by which to grow the vector when it's full
        const growFactor: usize = 2;

        /// Initialize a new vector with a given allocator
        pub fn init(allocator: *std.mem.Allocator) Self {
            return .{ .allocator = allocator };
        }
        /// Initalize a new vector with a given capacity
        pub fn init_with_cap(allocator: *std.mem.Allocator, cap: usize) !Self {
            const items = try allocator.alloc(cap);
            return .{ .allocator = allocator, .cap = cap, .items = items };
        }
        /// Deinitialize the vector, freeing its memory
        pub fn deinit(self: *Self) void {
            self.allocator.free(self.items);
        }

        /// Check if the vector should grow by seeing if it is full
        fn should_grow(self: *Self) !void {
            if (self.len >= self.cap) {
                self.cap = @max(growFactor * self.cap, 1);
                self.items = try self.allocator.realloc(self.items, self.cap);
            }
        }

        /// Append an item to the end of the vector
        // Runtime Complexity: O(1)
        // If needs to resize: O(n)
        pub fn append(self: *Self, item: T) !void {
            try self.should_grow();
            self.items[self.len] = item;
            self.len += 1;
        }

        /// Insert an item at a specific index in the vector
        // Runtime Complexity: O(n)
        pub fn insert(self: *Self, item: T, index: usize) !void {
            try self.should_grow();
            if (index >= self.cap) {
                return;
            }
            self.items[index] = item;
            self.len += 1;
        }

        /// Delete an item at a specific index in the vector
        // Runtime Complexity: O(n)
        pub fn delete(self: *Self, index: usize) void {
            if (index >= self.len) return;

            for (index..self.len - 1) |i| {
                self.items[i] = self.items[i + 1];
            }

            self.len -= 1;
        }

        /// Remove and return the last item in the vector
        // Runtime Complexity: O(1)
        pub fn pop(self: *Self) ?T {
            if (self.len == 0) {
                return null;
            } else {
                self.len -= 1;
                return self.items[self.len];
            }
        }
        
        /// Binary Search that returns the index if target is found or null if not
        // Runtime Complexity: O(log n)
        pub fn binary_search(self: Self, target: T) ?usize {
            var left: usize = 0;
            var right: usize = self.items.len - 1;

            while (left <= right) {
                const mid = left + (right - left) / 2;
                if (self.items[mid] == target) {
                    return mid;
                }

                // If the target is greater, ignore the left half
                if (self.items[mid] < target) {
                    left = mid + 1;
                } // If the target is smaller, ignore the right half
                else {
                    right = mid - 1;
                }
            }
            // Target is not in the array
            return null;
        }
    };
}

pub fn main() !void {
    // Create our general purpose allocator
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    // Get the allocator for our Vector
    var allocator = gpa.allocator();
    // Initialize the vector
    var vector = Vector(i32).init(&allocator);
    // Defer GPA deinitialization and add panic for memory leak
    defer {
        const deinit_status = gpa.deinit();
        if (deinit_status == .leak) @panic("Memory Leak!");
    }
    // Defer deinitialization of vector
    defer vector.deinit();

    // Append items to the vector
    try vector.append(1); // cap: 1, len: 1 [1]
    try vector.append(2); // cap: 2, len: 2 [1,2]
    try vector.insert(32, 2); // cap: 4, len: 3 [1, 2, 32]
    try vector.append(3); // cap: 4, len: 4 [1, 2, 32, 3]
    vector.delete(1); // cap: 4, len: 3 [1, 32, 3]

    for (vector.items[0..vector.len], 0..vector.len) |item, i| {
        std.debug.print("Item: {}: {}\n", .{ i, item });
    }

    std.debug.print("Search for 32: {any}\n", .{vector.binary_search(32)});

    for (0..vector.len) |_| {
        std.debug.print("Popped: {any}\n", .{vector.pop()});
    }
}
