const std = @import("std");

// Define a struct for custom alignment.
const AlignedStruct = struct {
    // Align this struct to a 16-byte boundary.
    data: u64 align(16),
};

// Defube a normal struct to compare to
const NormalStruct = struct {
    data: u64,
};

pub fn main() void {
    // Create an instance of the aligned struct.
    const aligned_instance = AlignedStruct{ .data = 42 };

    // Check the alignment of the aligned instance.
    const alignment = @alignOf(AlignedStruct);

    // Print the alignment and address of the aligned instance.
    const address = @intFromPtr(&aligned_instance);

    std.debug.print("Alignment of AlignedStruct: {}\n", .{alignment});
    std.debug.print("Address of aligned_instance: {x}\n", .{address});

    // Create an _instance of the normal struct.
    const normal_instance = NormalStruct{ .data = 42 };

    // Check the alignment of the normal instance
    const norm_alignment = @alignOf(NormalStruct);
    const norm_address = @intFromPtr(&normal_instance);

    std.debug.print("Alignment of NormalStruct: {}\n", .{norm_alignment});
    std.debug.print("Address of norm_instance: {x}\n", .{norm_address});

    // zig fmt: off
    // To verify you'd check (address % alignment)
    std.debug.print("Is Aligned to 16 ({any})? {}\n", 
    .{AlignedStruct, (address % alignment) == 0});
    std.debug.print("Is Aligned to 16 ({any})? {}\n", 
    .{NormalStruct, (norm_address % alignment) == 0});
}
