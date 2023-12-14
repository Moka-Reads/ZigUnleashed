const std = @import("std");
const cwd = std.fs.cwd();

const FileSizeTypes = enum {
    Small, // 10KB
    Medium, // 100KB
    Large, // 1MB
    Unknown, // if user gives wrong

    const Self = @This();
    // A little predefined hashmap
    const Table = [_]struct { key: []const u8, value: Self }{
        .{ .key = "Small", .value = .Small },
        .{ .key = "Medium", .value = .Medium },
        .{ .key = "Large", .value = .Large },
    };

    const tenKB_binary: usize = 10 * 1024;
    const hundredKB_binary: usize = 100 * 1024;
    const oneMB_binary: usize = 1 * 1024 * 1024;

    pub fn parse(string: []const u8) Self {
        for (Table) |entry| {
            if (std.mem.eql(u8, string, entry.key)) return entry.value;
        }
        return .Unknown;
    }
    pub fn size(self: Self) usize {
        return switch (self) {
            .Small => tenKB_binary,
            .Medium => hundredKB_binary,
            .Large => oneMB_binary,
            .Unknown => 0,
        };
    }
};

const help_message =
    \\ Chapter 6 Exercise 1
    \\ Usage: 
    \\ ./ex1 <file_path> <file_size_type>
    \\
    \\ File Size Types: 
    \\ Small = 10KB
    \\ Medium = 100KB
    \\ Large = 1MB
;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer {
        const check = gpa.deinit();
        if (check == .leak) @panic("Memory leak!");
    }
    // get arguments
    var arguments = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, arguments);

    if (arguments.len != 3) {
        std.debug.print("{s}\n", .{help_message});
        return;
    }

    const name = arguments[1];
    const size = FileSizeTypes.parse(arguments[2]);
    if (size == .Unknown) {
        std.debug.print("Unknown size!", .{});
        return;
    }
    // read file
    const buffer = try cwd.readFileAlloc(allocator, name, size.size());
    defer allocator.free(buffer);
    std.debug.print("File Read: {s}\n", .{name});
    std.debug.print("Bytes Read: {d}\n", .{buffer.len});
    std.debug.print("Max Bytes: {d}\n", .{size.size()});
    std.debug.print("Content:\n{s}\n", .{buffer});
}
