const std = @import("std");
const pthread = @cImport(@cInclude("pthread.h"));
const pthread_t = pthread.pthread_t;
const pthread_create = pthread.pthread_create;
const pthread_join = pthread.pthread_join;
const pthread_exit = pthread.pthread_exit;

export fn print_message(arg_ptr: ?*anyopaque) ?*anyopaque {
    var message: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(arg_ptr)));
    std.debug.print("{s}\n", .{message});
    pthread_exit(null);
    return null;
}

pub fn main() !void {
    var thread1: pthread_t = undefined;
    var thread2: pthread_t = undefined;

    var message1: [*c]u8 = @as([*c]u8, @ptrCast(@constCast("Thread 1 is running")));
    var message2: [*c]u8 = @as([*c]u8, @ptrCast(@constCast("Thread 2 is running")));

    if (pthread_create(&thread1, null, &print_message, @as(?*anyopaque, @ptrCast(message1))) != 0) {
        std.debug.print("Error Creating Thread 1\n", .{});
        return;
    }
    if (pthread_create(&thread2, null, &print_message, @as(?*anyopaque, @ptrCast(message2))) != 0) {
        std.debug.print("Error Creating Thread 2\n", .{});
        return;
    }
    var status1: ?*anyopaque = undefined;
    var status2: ?*anyopaque = undefined;
    if (pthread_join(thread1, &status1) != 0) {
        std.debug.print("Error joining thread 1\n", .{});
        return;
    }
    if (pthread_join(thread2, &status2) != 0) {
        std.debug.print("Error joining thread 2\n", .{});
        return;
    }
    std.debug.print("Both threads have finished\n", .{});
}
