const std = @import("std");

pub fn main() anyerror!void {
    // variables
    // (const|var) identifier[: type] = value
    const constant: i32 = 78;
    var variable: i32 = 89;

    std.debug.print("{}\n", .{constant});
    std.debug.print("{}\n", .{variable});
    // @as refs
    const inferred_const = @as(u32, 78);
    var inferred_var = @as(u32, 89);

    std.debug.print("{}\n", .{inferred_const});
    std.debug.print("{}\n", .{inferred_var});
    // unindefied
    const a: i32 = undefined;
    const b: i32 = undefined;

    std.debug.print("{}\n", .{a});
    std.debug.print("{}\n", .{b});

    std.log.info("All your codebase are belong to us.", .{});
    std.debug.print("Hello, {s}\n", .{"World"});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
