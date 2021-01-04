//!
//! This file generated automatically from damage.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "DAMAGE", .global_id = 0 };

pub const DAMAGE = u32;

pub const ReportLevel = extern enum(c_uint) {
    @"RawRectangles" = 0,
    @"DeltaRectangles" = 1,
    @"BoundingBox" = 2,
    @"NonEmpty" = 3,
};

/// Opcode for BadDamage.
pub const BadDamageOpcode = 0;

/// @brief BadDamageError
pub const BadDamageError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u32,
    @"client_minor_version": u32,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u32,
    @"minor_version": u32,
    @"pad1": [16]u8,
};

/// @brief CreateRequest
pub const CreateRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"damage": xcb.damage.DAMAGE,
    @"drawable": xcb.DRAWABLE,
    @"level": u8,
    @"pad0": [3]u8,
};

/// @brief DestroyRequest
pub const DestroyRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"damage": xcb.damage.DAMAGE,
};

/// @brief SubtractRequest
pub const SubtractRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"damage": xcb.damage.DAMAGE,
    @"repair": xcb.xfixes.REGION,
    @"parts": xcb.xfixes.REGION,
};

/// @brief AddRequest
pub const AddRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"region": xcb.xfixes.REGION,
};

/// Opcode for Notify.
pub const NotifyOpcode = 0;

/// @brief NotifyEvent
pub const NotifyEvent = struct {
    @"response_type": u8,
    @"level": u8,
    @"sequence": u16,
    @"drawable": xcb.DRAWABLE,
    @"damage": xcb.damage.DAMAGE,
    @"timestamp": xcb.TIMESTAMP,
    @"area": xcb.RECTANGLE,
    @"geometry": xcb.RECTANGLE,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
