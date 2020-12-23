//!
//! This file generated automatically from xf86dri.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XFree86-DRI", .global_id = 0 };

/// @brief DrmClipRect
pub const DrmClipRect = extern struct {
    @"x1": i16,
    @"y1": i16,
    @"x2": i16,
    @"x3": i16,
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
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"dri_major_version": u16,
    @"dri_minor_version": u16,
    @"dri_minor_patch": u32,
};

/// @brief QueryDirectRenderingCapablecookie
pub const QueryDirectRenderingCapablecookie = struct {
    sequence: c_uint,
};

/// @brief QueryDirectRenderingCapableRequest
pub const QueryDirectRenderingCapableRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"screen": u32,
};

/// @brief QueryDirectRenderingCapableReply
pub const QueryDirectRenderingCapableReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"is_capable": u8,
};

/// @brief OpenConnectioncookie
pub const OpenConnectioncookie = struct {
    sequence: c_uint,
};

/// @brief OpenConnectionRequest
pub const OpenConnectionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"screen": u32,
};

/// @brief OpenConnectionReply
pub const OpenConnectionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"sarea_handle_low": u32,
    @"sarea_handle_high": u32,
    @"bus_id_len": u32,
    @"pad1": [12]u8,
    @"bus_id": [*]u8,
};

/// @brief CloseConnectionRequest
pub const CloseConnectionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"screen": u32,
};

/// @brief GetClientDriverNamecookie
pub const GetClientDriverNamecookie = struct {
    sequence: c_uint,
};

/// @brief GetClientDriverNameRequest
pub const GetClientDriverNameRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"screen": u32,
};

/// @brief GetClientDriverNameReply
pub const GetClientDriverNameReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"client_driver_major_version": u32,
    @"client_driver_minor_version": u32,
    @"client_driver_patch_version": u32,
    @"client_driver_name_len": u32,
    @"pad1": [8]u8,
    @"client_driver_name": [*]u8,
};

/// @brief CreateContextcookie
pub const CreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief CreateContextRequest
pub const CreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"screen": u32,
    @"visual": u32,
    @"context": u32,
};

/// @brief CreateContextReply
pub const CreateContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"hw_context": u32,
};

/// @brief DestroyContextRequest
pub const DestroyContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"screen": u32,
    @"context": u32,
};

/// @brief CreateDrawablecookie
pub const CreateDrawablecookie = struct {
    sequence: c_uint,
};

/// @brief CreateDrawableRequest
pub const CreateDrawableRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"screen": u32,
    @"drawable": u32,
};

/// @brief CreateDrawableReply
pub const CreateDrawableReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"hw_drawable_handle": u32,
};

/// @brief DestroyDrawableRequest
pub const DestroyDrawableRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"screen": u32,
    @"drawable": u32,
};

/// @brief GetDrawableInfocookie
pub const GetDrawableInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetDrawableInfoRequest
pub const GetDrawableInfoRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"screen": u32,
    @"drawable": u32,
};

/// @brief GetDrawableInfoReply
pub const GetDrawableInfoReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"drawable_table_index": u32,
    @"drawable_table_stamp": u32,
    @"drawable_origin_X": i16,
    @"drawable_origin_Y": i16,
    @"drawable_size_W": i16,
    @"drawable_size_H": i16,
    @"num_clip_rects": u32,
    @"back_x": i16,
    @"back_y": i16,
    @"num_back_clip_rects": u32,
    @"clip_rects": [*]xcb.xf86dri.DrmClipRect,
    @"back_clip_rects": [*]xcb.xf86dri.DrmClipRect,
};

/// @brief GetDeviceInfocookie
pub const GetDeviceInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceInfoRequest
pub const GetDeviceInfoRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"screen": u32,
};

/// @brief GetDeviceInfoReply
pub const GetDeviceInfoReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"framebuffer_handle_low": u32,
    @"framebuffer_handle_high": u32,
    @"framebuffer_origin_offset": u32,
    @"framebuffer_size": u32,
    @"framebuffer_stride": u32,
    @"device_private_size": u32,
    @"device_private": [*]u32,
};

/// @brief AuthConnectioncookie
pub const AuthConnectioncookie = struct {
    sequence: c_uint,
};

/// @brief AuthConnectionRequest
pub const AuthConnectionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"screen": u32,
    @"magic": u32,
};

/// @brief AuthConnectionReply
pub const AuthConnectionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"authenticated": u32,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
