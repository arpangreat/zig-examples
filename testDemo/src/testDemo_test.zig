const std = @import("std");

test "expect addOne adds one to 41" {
    try std.testing.expect(addOne(41) == 42);
}

fn addOne(n: i32) i32 {
    return n + 1;
}
