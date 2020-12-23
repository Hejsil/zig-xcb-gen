//!
//! This file generated automatically from xinerama.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XINERAMA", .global_id = 0 };

/// @brief ScreenInfo
pub const ScreenInfo = extern struct {
    @"x_org": i16,
    @"y_org": i16,
    @"width": u16,
    @"height": u16,
};

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"major": u8,
    @"minor": u8,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major": u16,
    @"minor": u16,
};

/// @brief GetStatecookie
pub const GetStatecookie = struct {
    sequence: c_uint,
};

/// @brief GetStateRequest
pub const GetStateRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetStateReply
pub const GetStateReply = extern struct {
    @"response_type": u8,
    @"state": u8,
    @"sequence": u16,
    @"length": u32,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenCountcookie
pub const GetScreenCountcookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenCountRequest
pub const GetScreenCountRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenCountReply
pub const GetScreenCountReply = extern struct {
    @"response_type": u8,
    @"screen_count": u8,
    @"sequence": u16,
    @"length": u32,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenSizecookie
pub const GetScreenSizecookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenSizeRequest
pub const GetScreenSizeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"screen": u32,
};

/// @brief GetScreenSizeReply
pub const GetScreenSizeReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width": u32,
    @"height": u32,
    @"window": xcb.WINDOW,
    @"screen": u32,
};

/// @brief IsActivecookie
pub const IsActivecookie = struct {
    sequence: c_uint,
};

/// @brief IsActiveRequest
pub const IsActiveRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
};

/// @brief IsActiveReply
pub const IsActiveReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"state": u32,
};

/// @brief QueryScreenscookie
pub const QueryScreenscookie = struct {
    sequence: c_uint,
};

/// @brief QueryScreensRequest
pub const QueryScreensRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
};

/// @brief QueryScreensReply
pub const QueryScreensReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"number": u32,
    @"pad1": [20]u8,
    @"screen_info": [*]xcb.xinerama.ScreenInfo,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
