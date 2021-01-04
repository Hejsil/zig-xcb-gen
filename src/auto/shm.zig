//!
//! This file generated automatically from shm.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "MIT-SHM", .global_id = 0 };

pub const SEG = u32;

/// Opcode for Completion.
pub const CompletionOpcode = 0;

/// @brief CompletionEvent
pub const CompletionEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"drawable": xcb.DRAWABLE,
    @"minor_event": u16,
    @"major_event": u8,
    @"pad1": u8,
    @"shmseg": xcb.shm.SEG,
    @"offset": u32,
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
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"shared_pixmaps": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u16,
    @"minor_version": u16,
    @"uid": u16,
    @"gid": u16,
    @"pixmap_format": u8,
    @"pad0": [15]u8,
};

/// @brief AttachRequest
pub const AttachRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"shmseg": xcb.shm.SEG,
    @"shmid": u32,
    @"read_only": u8,
    @"pad0": [3]u8,
};

/// @brief DetachRequest
pub const DetachRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"shmseg": xcb.shm.SEG,
};

/// @brief PutImageRequest
pub const PutImageRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"total_width": u16,
    @"total_height": u16,
    @"src_x": u16,
    @"src_y": u16,
    @"src_width": u16,
    @"src_height": u16,
    @"dst_x": i16,
    @"dst_y": i16,
    @"depth": u8,
    @"format": u8,
    @"send_event": u8,
    @"pad0": u8,
    @"shmseg": xcb.shm.SEG,
    @"offset": u32,
};

/// @brief GetImagecookie
pub const GetImagecookie = struct {
    sequence: c_uint,
};

/// @brief GetImageRequest
pub const GetImageRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"plane_mask": u32,
    @"format": u8,
    @"pad0": [3]u8,
    @"shmseg": xcb.shm.SEG,
    @"offset": u32,
};

/// @brief GetImageReply
pub const GetImageReply = struct {
    @"response_type": u8,
    @"depth": u8,
    @"sequence": u16,
    @"length": u32,
    @"visual": xcb.VISUALID,
    @"size": u32,
};

/// @brief CreatePixmapRequest
pub const CreatePixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"pid": xcb.PIXMAP,
    @"drawable": xcb.DRAWABLE,
    @"width": u16,
    @"height": u16,
    @"depth": u8,
    @"pad0": [3]u8,
    @"shmseg": xcb.shm.SEG,
    @"offset": u32,
};

/// @brief AttachFdRequest
pub const AttachFdRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"shmseg": xcb.shm.SEG,
    @"read_only": u8,
    @"pad0": [3]u8,
};

/// @brief CreateSegmentcookie
pub const CreateSegmentcookie = struct {
    sequence: c_uint,
};

/// @brief CreateSegmentRequest
pub const CreateSegmentRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"shmseg": xcb.shm.SEG,
    @"size": u32,
    @"read_only": u8,
    @"pad0": [3]u8,
};

/// @brief CreateSegmentReply
pub const CreateSegmentReply = struct {
    @"response_type": u8,
    @"nfd": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
