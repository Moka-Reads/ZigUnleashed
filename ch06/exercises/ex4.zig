const std = @import("std");

pub fn CircularBuffer(comptime T: type) type {
    return struct {
        data: []T,
        allocator: *std.mem.Allocator,
        size: usize,
        front: usize,
        rear: usize,

        const Self = @This();

        pub fn init(size: usize, allocator: *std.mem.Allocator) !Self {
            const data = try allocator.alloc(T, size);
            return .{ .size = size, .data = data, .allocator = allocator, .front = 0, .rear = 0 };
        }
        pub fn deinit(self: *Self) void {
            self.allocator.free(self.data);
        }

        fn isEmpty(self: Self) bool {
            return self.front == self.rear;
        }
        fn isFull(self: Self) bool {
            return (self.rear + 1) % self.size == self.front;
        }
        pub fn enqueue(self: *Self, item: T) void {
            if (self.isFull()) {
                return;
            }
            self.data[self.rear] = item;
            self.rear = (self.rear + 1) % self.size;
        }
        pub fn dequeue(self: *Self) ?T {
            if (self.isEmpty()) return null;
            const item = self.data[self.front];
            self.front = (self.front + 1) % self.size;
            return item;
        }
        pub fn print(self: Self) void {
            if (self.isEmpty()) {
                std.debug.print("Buffer Empty!\n", .{});
                return;
            }
            var i = self.front;
            while (i != self.rear) : (i = (i + 1) % self.size) {
                std.debug.print("{} ", .{self.data[i]});
            }
            std.debug.print("\n", .{});
        }
    };
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer {
        const check = gpa.deinit();
        if (check == .leak) @panic("memory leak");
    }
    var allocator = gpa.allocator();
    var buffer = try CircularBuffer(i32).init(5, &allocator);
    defer buffer.deinit();

    buffer.enqueue(10);
    buffer.enqueue(20);
    buffer.enqueue(30);
    buffer.print();

    _ = buffer.dequeue();
    buffer.print();

    buffer.enqueue(40);
    buffer.enqueue(50);
    buffer.print();
}
