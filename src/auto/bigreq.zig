//!
//! This file generated automatically from bigreq.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "BIG-REQUESTS", .global_id = 0 };

/// @brief Enablecookie
pub const Enablecookie = struct {
    sequence: c_uint,
};

/// @brief EnableRequest
pub const EnableRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
};

/// @brief EnableReply
pub const EnableReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"maximum_request_length": u32,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
