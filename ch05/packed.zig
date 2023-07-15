const std = @import("std");
const PackedStruct = packed struct { // Define a packed struct
    a: u8,  // 1 byte
    b: u16, // 2 bytes
    c: u8,  // 1 byte
};
const NormalStruct = struct { // Define a normal struct
    a: u8,   // 1 byte
    // 1 byte of padding is inserted here to align `b` on a 2-byte boundary
    b: u16,  // 2 bytes
    c: u8,   // 1 byte
};
pub fn main() void {
    // Print the size of the packed struct
    std.debug.print("Size of PackedStruct: {}\n", .{@sizeOf(PackedStruct)});
    // Print the size of the normal struct
    std.debug.print("Size of NormalStruct: {}\n", .{@sizeOf(NormalStruct)});
}
