//!
//! This file generated automatically from dpms.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "DPMS", .global_id = 0 };

/// @brief GetVersioncookie
pub const GetVersioncookie = struct {
    sequence: c_uint,
};

/// @brief GetVersionRequest
pub const GetVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u16,
    @"client_minor_version": u16,
};

/// @brief GetVersionReply
pub const GetVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major_version": u16,
    @"server_minor_version": u16,
};

/// @brief Capablecookie
pub const Capablecookie = struct {
    sequence: c_uint,
};

/// @brief CapableRequest
pub const CapableRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
};

/// @brief CapableReply
pub const CapableReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"capable": u8,
    @"pad1": [23]u8,
};

/// @brief GetTimeoutscookie
pub const GetTimeoutscookie = struct {
    sequence: c_uint,
};

/// @brief GetTimeoutsRequest
pub const GetTimeoutsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
};

/// @brief GetTimeoutsReply
pub const GetTimeoutsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"standby_timeout": u16,
    @"suspend_timeout": u16,
    @"off_timeout": u16,
    @"pad1": [18]u8,
};

/// @brief SetTimeoutsRequest
pub const SetTimeoutsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"standby_timeout": u16,
    @"suspend_timeout": u16,
    @"off_timeout": u16,
};

/// @brief EnableRequest
pub const EnableRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
};

/// @brief DisableRequest
pub const DisableRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
};

pub const DPMSMode = extern enum(c_uint) {
    @"On" = 0,
    @"Standby" = 1,
    @"Suspend" = 2,
    @"Off" = 3,
};

/// @brief ForceLevelRequest
pub const ForceLevelRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"power_level": u16,
};

/// @brief Infocookie
pub const Infocookie = struct {
    sequence: c_uint,
};

/// @brief InfoRequest
pub const InfoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
};

/// @brief InfoReply
pub const InfoReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"power_level": u16,
    @"state": u8,
    @"pad1": [21]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
