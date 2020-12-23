//!
//! This file generated automatically from xc_misc.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XC-MISC", .global_id = 0 };

/// @brief GetVersioncookie
pub const GetVersioncookie = struct {
    sequence: c_uint,
};

/// @brief GetVersionRequest
pub const GetVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u16,
    @"client_minor_version": u16,
};

/// @brief GetVersionReply
pub const GetVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major_version": u16,
    @"server_minor_version": u16,
};

/// @brief GetXIDRangecookie
pub const GetXIDRangecookie = struct {
    sequence: c_uint,
};

/// @brief GetXIDRangeRequest
pub const GetXIDRangeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
};

/// @brief GetXIDRangeReply
pub const GetXIDRangeReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"start_id": u32,
    @"count": u32,
};

/// @brief GetXIDListcookie
pub const GetXIDListcookie = struct {
    sequence: c_uint,
};

/// @brief GetXIDListRequest
pub const GetXIDListRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"count": u32,
};

/// @brief GetXIDListReply
pub const GetXIDListReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ids_len": u32,
    @"pad1": [20]u8,
    @"ids": [*]u32,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
