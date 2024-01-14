const std = @import("std");
const testing = std.testing;

test "hashmap operations" {
    // An auto hashmap with key type `usize` and value type `string`
    var map = std.AutoHashMap(usize, []const u8).init(testing.allocator);
    // Make sure to deinitialize hashmap at end of scope
    defer map.deinit();

    // 1. To insert use the `put` function
    // put(self: *Self, K, V) Allocator.Error!void
    try map.put(1, "1st val");
    try map.put(2, "2nd val");
    try map.putNoClobber(3, "3rd val");
    try map.putNoClobber(4, "4th val");

    // 2. To delete use the `remove` function
    // remove(self: *Self, K) bool
    if (map.remove(1)) {
        std.debug.print("\nRemoved 1st val successfully!\n", .{});
    }

    // 3. To lookup a value, use the `get` function
    // get(self: Self, key: K) ?V
    const val: ?[]const u8 = map.get(2);
    try testing.expect(std.mem.eql(u8, val.?, "2nd val"));

    // 4. To update a value, use the `put` function
    // This functions clobbers existing data
    try map.put(2, "An updated val");

    // 5. To iterate you will need to use the
    // `iterator()` function to get the `Iterator` type
    var iterator = map.iterator();

    // while loop will exit once `next()` returns `null`
    // next(self: *Self) ?Entry
    // capture `entry` that is type `Entry`
    while (iterator.next()) |entry| {
        // `Entry` type contains a pointer to the key and value pair
        std.debug.print("{d} => {s}\n", .{ entry.key_ptr.*, entry.value_ptr.* });
    }
}

test "arrayhashmap operations" {
    var map = std.AutoArrayHashMap(usize, []const u8).init(testing.allocator);
    defer map.deinit();
    // To insert use the `put` function
    try map.put(1, "1st val");
    try map.put(2, "2nd val");
    try map.putNoClobber(3, "3rd val");
    try map.putNoClobber(4, "4th val");
    // iterate using `keys()` and `values()`
    std.debug.print("\nKeys and Values Arrays\n", .{});
    for (map.keys(), map.values()) |k, v| {
        std.debug.print("{d} => {s}\n", .{ k, v });
    }
    // or you can iterate like before:
    std.debug.print("Iterator\n", .{});
    var iterator = map.iterator();
    while (iterator.next()) |entry| {
        std.debug.print("{d} => {s}\n", .{ entry.key_ptr.*, entry.value_ptr.* });
    }
}
