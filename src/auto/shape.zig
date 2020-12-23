//!
//! This file generated automatically from shape.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "SHAPE", .global_id = 0 };

pub const OP = u8;

pub const KIND = u8;

pub const SO = extern enum(c_uint) {
    @"Set" = 0,
    @"Union" = 1,
    @"Intersect" = 2,
    @"Subtract" = 3,
    @"Invert" = 4,
};

pub const SK = extern enum(c_uint) {
    @"Bounding" = 0,
    @"Clip" = 1,
    @"Input" = 2,
};

/// Opcode for Notify.
pub const NotifyOpcode = 0;

/// @brief NotifyEvent
pub const NotifyEvent = extern struct {
    @"response_type": u8,
    @"shape_kind": xcb.shape.KIND,
    @"sequence": u16,
    @"affected_window": xcb.WINDOW,
    @"extents_x": i16,
    @"extents_y": i16,
    @"extents_width": u16,
    @"extents_height": u16,
    @"server_time": xcb.TIMESTAMP,
    @"shaped": u8,
    @"pad0": [11]u8,
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
    @"major_version": u16,
    @"minor_version": u16,
};

/// @brief RectanglesRequest
pub const RectanglesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"operation": xcb.shape.OP,
    @"destination_kind": xcb.shape.KIND,
    @"ordering": u8,
    @"pad0": u8,
    @"destination_window": xcb.WINDOW,
    @"x_offset": i16,
    @"y_offset": i16,
    @"rectangles": [*]xcb.RECTANGLE,
};

/// @brief MaskRequest
pub const MaskRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"operation": xcb.shape.OP,
    @"destination_kind": xcb.shape.KIND,
    @"pad0": [2]u8,
    @"destination_window": xcb.WINDOW,
    @"x_offset": i16,
    @"y_offset": i16,
    @"source_bitmap": xcb.PIXMAP,
};

/// @brief CombineRequest
pub const CombineRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"operation": xcb.shape.OP,
    @"destination_kind": xcb.shape.KIND,
    @"source_kind": xcb.shape.KIND,
    @"pad0": u8,
    @"destination_window": xcb.WINDOW,
    @"x_offset": i16,
    @"y_offset": i16,
    @"source_window": xcb.WINDOW,
};

/// @brief OffsetRequest
pub const OffsetRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"destination_kind": xcb.shape.KIND,
    @"pad0": [3]u8,
    @"destination_window": xcb.WINDOW,
    @"x_offset": i16,
    @"y_offset": i16,
};

/// @brief QueryExtentscookie
pub const QueryExtentscookie = struct {
    sequence: c_uint,
};

/// @brief QueryExtentsRequest
pub const QueryExtentsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"destination_window": xcb.WINDOW,
};

/// @brief QueryExtentsReply
pub const QueryExtentsReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"bounding_shaped": u8,
    @"clip_shaped": u8,
    @"pad1": [2]u8,
    @"bounding_shape_extents_x": i16,
    @"bounding_shape_extents_y": i16,
    @"bounding_shape_extents_width": u16,
    @"bounding_shape_extents_height": u16,
    @"clip_shape_extents_x": i16,
    @"clip_shape_extents_y": i16,
    @"clip_shape_extents_width": u16,
    @"clip_shape_extents_height": u16,
};

/// @brief SelectInputRequest
pub const SelectInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"destination_window": xcb.WINDOW,
    @"enable": u8,
    @"pad0": [3]u8,
};

/// @brief InputSelectedcookie
pub const InputSelectedcookie = struct {
    sequence: c_uint,
};

/// @brief InputSelectedRequest
pub const InputSelectedRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"destination_window": xcb.WINDOW,
};

/// @brief InputSelectedReply
pub const InputSelectedReply = extern struct {
    @"response_type": u8,
    @"enabled": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief GetRectanglescookie
pub const GetRectanglescookie = struct {
    sequence: c_uint,
};

/// @brief GetRectanglesRequest
pub const GetRectanglesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"source_kind": xcb.shape.KIND,
    @"pad0": [3]u8,
};

/// @brief GetRectanglesReply
pub const GetRectanglesReply = extern struct {
    @"response_type": u8,
    @"ordering": u8,
    @"sequence": u16,
    @"length": u32,
    @"rectangles_len": u32,
    @"pad0": [20]u8,
    @"rectangles": [*]xcb.RECTANGLE,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
