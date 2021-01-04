//!
//! This file generated automatically from xtest.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XTEST", .global_id = 0 };

/// @brief GetVersioncookie
pub const GetVersioncookie = struct {
    sequence: c_uint,
};

/// @brief GetVersionRequest
pub const GetVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"major_version": u8,
    @"pad0": u8,
    @"minor_version": u16,
};

/// @brief GetVersionReply
pub const GetVersionReply = struct {
    @"response_type": u8,
    @"major_version": u8,
    @"sequence": u16,
    @"length": u32,
    @"minor_version": u16,
};

pub const Cursor = extern enum(c_uint) {
    @"None" = 0,
    @"Current" = 1,
};

/// @brief CompareCursorcookie
pub const CompareCursorcookie = struct {
    sequence: c_uint,
};

/// @brief CompareCursorRequest
pub const CompareCursorRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"cursor": xcb.CURSOR,
};

/// @brief CompareCursorReply
pub const CompareCursorReply = struct {
    @"response_type": u8,
    @"same": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief FakeInputRequest
pub const FakeInputRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"type": u8,
    @"detail": u8,
    @"pad0": [2]u8,
    @"time": u32,
    @"root": xcb.WINDOW,
    @"pad1": [8]u8,
    @"rootX": i16,
    @"rootY": i16,
    @"pad2": [7]u8,
    @"deviceid": u8,
};

/// @brief GrabControlRequest
pub const GrabControlRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"impervious": u8,
    @"pad0": [3]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
