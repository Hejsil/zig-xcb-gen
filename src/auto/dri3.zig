//!
//! This file generated automatically from dri3.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "DRI3", .global_id = 0 };

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"major_version": u32,
    @"minor_version": u32,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u32,
    @"minor_version": u32,
};

/// @brief Opencookie
pub const Opencookie = struct {
    sequence: c_uint,
};

/// @brief OpenRequest
pub const OpenRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"provider": u32,
};

/// @brief OpenReply
pub const OpenReply = struct {
    @"response_type": u8,
    @"nfd": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
};

/// @brief PixmapFromBufferRequest
pub const PixmapFromBufferRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"pixmap": xcb.PIXMAP,
    @"drawable": xcb.DRAWABLE,
    @"size": u32,
    @"width": u16,
    @"height": u16,
    @"stride": u16,
    @"depth": u8,
    @"bpp": u8,
};

/// @brief BufferFromPixmapcookie
pub const BufferFromPixmapcookie = struct {
    sequence: c_uint,
};

/// @brief BufferFromPixmapRequest
pub const BufferFromPixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"pixmap": xcb.PIXMAP,
};

/// @brief BufferFromPixmapReply
pub const BufferFromPixmapReply = struct {
    @"response_type": u8,
    @"nfd": u8,
    @"sequence": u16,
    @"length": u32,
    @"size": u32,
    @"width": u16,
    @"height": u16,
    @"stride": u16,
    @"depth": u8,
    @"bpp": u8,
    @"pad0": [12]u8,
};

/// @brief FenceFromFDRequest
pub const FenceFromFDRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"fence": u32,
    @"initially_triggered": u8,
    @"pad0": [3]u8,
};

/// @brief FDFromFencecookie
pub const FDFromFencecookie = struct {
    sequence: c_uint,
};

/// @brief FDFromFenceRequest
pub const FDFromFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"fence": u32,
};

/// @brief FDFromFenceReply
pub const FDFromFenceReply = struct {
    @"response_type": u8,
    @"nfd": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
