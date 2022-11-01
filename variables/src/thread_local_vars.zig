const std = @import("std");
const assert = std.debug.assert;

threadlocal var x: i32 = 1234;

test "Thread local storage" {
    const thread1 = std.Thread.spawn(.{}, testTls, .{});
    const thread2 = std.Thread.spawn(.{}, testTls, .{});
    testTls();
    thread1.join();
    thread2.join();
}

fn testTls() void {
    assert(x == 1234);
    x += 1;
    assert(x == 1235);
}
