const std = @import("std");
const sha = std.crypto.hash.sha2.Sha256;
const Map = std.AutoHashMap(usize, []const u8);
const ArrayMap = std.AutoArrayHashMap(usize, []const u8);
const Instant = std.time.Instant;

const defaults: [10][]const u8 = .{
    "The quick brown fox jumps over the lazy dog in the forest.",
    \\Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
    \\Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
    ,
    \\Artificial intelligence is rapidly advancing, reshaping industries 
    \\and pushing the boundaries of what is possible.
    ,
    \\In the vast expanse of the cosmos, galaxies dance in the cosmic ballet, 
    \\ revealing the wonders of the universe.
    ,
    \\The intricacies of quantum mechanics unravel a tapestry of particles and waves, 
    \\defying our classical intuition.
    ,
    \\On a quiet and serene evening, the moon casts its gentle glow upon the tranquil 
    \\waters of the reflective lake.
    ,
    \\Exploring the unfathomable depths of the ocean, where sunlight struggles to penetrate, 
    \\one discovers a realm of extraordinary biodiversity, with mysterious creatures gliding 
    \\through the inky darkness, and vibrant coral reefs forming intricate ecosystems of 
    \\unparalleled beauty.
    ,
    \\As the radiant sun gracefully descends below the horizon, casting a warm and golden glow across 
    \\the vast expanse of the sky, the world transitions into a tranquil and magical twilight, where time
    \\ seems to momentarily stand still, allowing for reflection and awe.
    ,
    \\The symphony of nature unfolds with a mesmerizing composition; the gentle breeze orchestrates a delicate 
    \\dance among the rustling leaves, while the melodic songs of a myriad of birds echo through the air, creating a 
    \\harmonious tapestry of life.
    ,
    \\Navigating the corridors of time, one encounters the remnants of ancient civilizations, each stone and artifact 
    \\bearing witness to the ebb and flow of human history, a rich tapestry woven with tales of triumph, tragedy, 
    \\and cultural metamorphosis.
};

fn add_values_map(map: *Map) !u64 {
    const start = try Instant.now();
    for (defaults, 0..) |d, i| {
        try map.put(i, d);
    }
    const end = try Instant.now();
    return end.since(start);
}

fn add_values_array_map(map: *ArrayMap) !u64 {
    const start = try Instant.now();

    for (defaults, 0..) |d, i| {
        try map.put(i, d);
    }
    const end = try Instant.now();
    return end.since(start);
}

fn hash_the_map(map: *Map) !u64 {
    const start = try Instant.now();
    var iterator = map.iterator();
    var hasher = sha.init(.{});
    while (iterator.next()) |entry| {
        hasher.update(entry.value_ptr.*);
        const res = hasher.finalResult();
        entry.value_ptr.* = &res;
    }
    const end = try Instant.now();
    return end.since(start);
}

fn hash_the_array_map(map: *ArrayMap) !u64 {
    const start = try Instant.now();
    var iterator = map.iterator();
    var hasher = sha.init(.{});
    while (iterator.next()) |entry| {
        hasher.update(entry.value_ptr.*);
        const res = hasher.finalResult();
        entry.value_ptr.* = &res;
    }
    const end = try Instant.now();
    return end.since(start);
}

fn get_map(map: *Map) !u64 {
    const start = try Instant.now();
    for (0..10) |k| {
        _ = map.get(k);
    }
    const end = try Instant.now();
    return end.since(start);
}

fn get_array_map(map: *ArrayMap) !u64 {
    const start = try Instant.now();
    for (0..10) |k| {
        _ = map.get(k);
    }
    const end = try Instant.now();
    return end.since(start);
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();
    var map = Map.init(allocator);
    defer map.deinit();

    std.debug.print("Adding Values to AutoHashMap....", .{});
    std.debug.print("Took {d} ns\n", .{try add_values_map(&map)});

    var array_map = ArrayMap.init(allocator);
    defer array_map.deinit();

    std.debug.print("Adding Values to AutoArrayMap....", .{});
    std.debug.print("Took {d} ns\n", .{try add_values_array_map(&array_map)});

    std.debug.print("Hashing Values to AutoHashMap....", .{});
    std.debug.print("Took {d} ns\n", .{try hash_the_map(&map)});

    std.debug.print("Hashing Values to AutoArrayHashMap....", .{});
    std.debug.print("Took {d} ns\n", .{try hash_the_array_map(&array_map)});

    std.debug.print("Getting Values to AutoHashMap....", .{});
    std.debug.print("Took {d} ns\n", .{try get_map(&map)});
    std.debug.print("Getting Values to AutoArrayHashMap....", .{});
    std.debug.print("Took {d} ns\n", .{try get_array_map(&array_map)});
}
