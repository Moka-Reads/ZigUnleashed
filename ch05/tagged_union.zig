const std = @import("std");
const Info = union(enum) {
    a: u32,
    b: []const u8,
    c,
    d: u32,
};

test {
    var b = Info{ .a = 10 };
    switch (b) {
        .a => {
            std.debug.assert(@TypeOf(b.a) == u32);
        },
        .b => {
            std.debug.assert(@TypeOf(b.b) == []const u8);
        },
        .c => {},
        .d => {
            std.debug.assert(@TypeOf(b.d) == u32);
        },
    }
}
