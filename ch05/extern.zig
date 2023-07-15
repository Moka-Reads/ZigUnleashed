const std = @import("std");

// Define an extern struct
const ExternStruct = extern struct {
    a: u8,
    b: u16,
    c: u8,
};
// export the function to C ABI
export fn send_struct() ExternStruct{
    return .{.a = 12, .b = 23, .c = 9};
}
