//!
//! This file generated automatically from composite.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "Composite", .global_id = 0 };

pub const Redirect = extern enum(c_uint) {
    @"Automatic" = 0,
    @"Manual" = 1,
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

/// @brief RedirectWindowRequest
pub const RedirectWindowRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"update": u8,
    @"pad0": [3]u8,
};

/// @brief RedirectSubwindowsRequest
pub const RedirectSubwindowsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"update": u8,
    @"pad0": [3]u8,
};

/// @brief UnredirectWindowRequest
pub const UnredirectWindowRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"update": u8,
    @"pad0": [3]u8,
};

/// @brief UnredirectSubwindowsRequest
pub const UnredirectSubwindowsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"update": u8,
    @"pad0": [3]u8,
};

/// @brief CreateRegionFromBorderClipRequest
pub const CreateRegionFromBorderClipRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"window": xcb.WINDOW,
};

/// @brief NameWindowPixmapRequest
pub const NameWindowPixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"pixmap": xcb.PIXMAP,
};

/// @brief GetOverlayWindowcookie
pub const GetOverlayWindowcookie = struct {
    sequence: c_uint,
};

/// @brief GetOverlayWindowRequest
pub const GetOverlayWindowRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetOverlayWindowReply
pub const GetOverlayWindowReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"overlay_win": xcb.WINDOW,
    @"pad1": [20]u8,
};

/// @brief ReleaseOverlayWindowRequest
pub const ReleaseOverlayWindowRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
