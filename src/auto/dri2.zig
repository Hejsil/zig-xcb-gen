//!
//! This file generated automatically from dri2.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "DRI2", .global_id = 0 };

pub const Attachment = extern enum(c_uint) {
    @"BufferFrontLeft" = 0,
    @"BufferBackLeft" = 1,
    @"BufferFrontRight" = 2,
    @"BufferBackRight" = 3,
    @"BufferDepth" = 4,
    @"BufferStencil" = 5,
    @"BufferAccum" = 6,
    @"BufferFakeFrontLeft" = 7,
    @"BufferFakeFrontRight" = 8,
    @"BufferDepthStencil" = 9,
    @"BufferHiz" = 10,
};

pub const DriverType = extern enum(c_uint) {
    @"DRI" = 0,
    @"VDPAU" = 1,
};

pub const EventType = extern enum(c_uint) {
    @"ExchangeComplete" = 1,
    @"BlitComplete" = 2,
    @"FlipComplete" = 3,
};

/// @brief DRI2Buffer
pub const DRI2Buffer = struct {
    @"attachment": u32,
    @"name": u32,
    @"pitch": u32,
    @"cpp": u32,
    @"flags": u32,
};

/// @brief AttachFormat
pub const AttachFormat = struct {
    @"attachment": u32,
    @"format": u32,
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

/// @brief Connectcookie
pub const Connectcookie = struct {
    sequence: c_uint,
};

/// @brief ConnectRequest
pub const ConnectRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"driver_type": u32,
};

/// @brief ConnectReply
pub const ConnectReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"driver_name_length": u32,
    @"device_name_length": u32,
    @"pad1": [16]u8,
    @"driver_name": []u8,
    @"alignment_pad": []u8,
    @"device_name": []u8,
};

/// @brief Authenticatecookie
pub const Authenticatecookie = struct {
    sequence: c_uint,
};

/// @brief AuthenticateRequest
pub const AuthenticateRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"magic": u32,
};

/// @brief AuthenticateReply
pub const AuthenticateReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"authenticated": u32,
};

/// @brief CreateDrawableRequest
pub const CreateDrawableRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief DestroyDrawableRequest
pub const DestroyDrawableRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief GetBufferscookie
pub const GetBufferscookie = struct {
    sequence: c_uint,
};

/// @brief GetBuffersRequest
pub const GetBuffersRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"count": u32,
    @"attachments": []const u32,
};

/// @brief GetBuffersReply
pub const GetBuffersReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width": u32,
    @"height": u32,
    @"count": u32,
    @"pad1": [12]u8,
    @"buffers": []xcb.dri2.DRI2Buffer,
};

/// @brief CopyRegioncookie
pub const CopyRegioncookie = struct {
    sequence: c_uint,
};

/// @brief CopyRegionRequest
pub const CopyRegionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"region": u32,
    @"dest": u32,
    @"src": u32,
};

/// @brief CopyRegionReply
pub const CopyRegionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief GetBuffersWithFormatcookie
pub const GetBuffersWithFormatcookie = struct {
    sequence: c_uint,
};

/// @brief GetBuffersWithFormatRequest
pub const GetBuffersWithFormatRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"count": u32,
    @"attachments": []const xcb.dri2.AttachFormat,
};

/// @brief GetBuffersWithFormatReply
pub const GetBuffersWithFormatReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width": u32,
    @"height": u32,
    @"count": u32,
    @"pad1": [12]u8,
    @"buffers": []xcb.dri2.DRI2Buffer,
};

/// @brief SwapBufferscookie
pub const SwapBufferscookie = struct {
    sequence: c_uint,
};

/// @brief SwapBuffersRequest
pub const SwapBuffersRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"target_msc_hi": u32,
    @"target_msc_lo": u32,
    @"divisor_hi": u32,
    @"divisor_lo": u32,
    @"remainder_hi": u32,
    @"remainder_lo": u32,
};

/// @brief SwapBuffersReply
pub const SwapBuffersReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"swap_hi": u32,
    @"swap_lo": u32,
};

/// @brief GetMSCcookie
pub const GetMSCcookie = struct {
    sequence: c_uint,
};

/// @brief GetMSCRequest
pub const GetMSCRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief GetMSCReply
pub const GetMSCReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ust_hi": u32,
    @"ust_lo": u32,
    @"msc_hi": u32,
    @"msc_lo": u32,
    @"sbc_hi": u32,
    @"sbc_lo": u32,
};

/// @brief WaitMSCcookie
pub const WaitMSCcookie = struct {
    sequence: c_uint,
};

/// @brief WaitMSCRequest
pub const WaitMSCRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"target_msc_hi": u32,
    @"target_msc_lo": u32,
    @"divisor_hi": u32,
    @"divisor_lo": u32,
    @"remainder_hi": u32,
    @"remainder_lo": u32,
};

/// @brief WaitMSCReply
pub const WaitMSCReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ust_hi": u32,
    @"ust_lo": u32,
    @"msc_hi": u32,
    @"msc_lo": u32,
    @"sbc_hi": u32,
    @"sbc_lo": u32,
};

/// @brief WaitSBCcookie
pub const WaitSBCcookie = struct {
    sequence: c_uint,
};

/// @brief WaitSBCRequest
pub const WaitSBCRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"target_sbc_hi": u32,
    @"target_sbc_lo": u32,
};

/// @brief WaitSBCReply
pub const WaitSBCReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ust_hi": u32,
    @"ust_lo": u32,
    @"msc_hi": u32,
    @"msc_lo": u32,
    @"sbc_hi": u32,
    @"sbc_lo": u32,
};

/// @brief SwapIntervalRequest
pub const SwapIntervalRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"interval": u32,
};

/// @brief GetParamcookie
pub const GetParamcookie = struct {
    sequence: c_uint,
};

/// @brief GetParamRequest
pub const GetParamRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"param": u32,
};

/// @brief GetParamReply
pub const GetParamReply = struct {
    @"response_type": u8,
    @"is_param_recognized": u8,
    @"sequence": u16,
    @"length": u32,
    @"value_hi": u32,
    @"value_lo": u32,
};

/// Opcode for BufferSwapComplete.
pub const BufferSwapCompleteOpcode = 0;

/// @brief BufferSwapCompleteEvent
pub const BufferSwapCompleteEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event_type": u16,
    @"pad1": [2]u8,
    @"drawable": xcb.DRAWABLE,
    @"ust_hi": u32,
    @"ust_lo": u32,
    @"msc_hi": u32,
    @"msc_lo": u32,
    @"sbc": u32,
};

/// Opcode for InvalidateBuffers.
pub const InvalidateBuffersOpcode = 1;

/// @brief InvalidateBuffersEvent
pub const InvalidateBuffersEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"drawable": xcb.DRAWABLE,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
