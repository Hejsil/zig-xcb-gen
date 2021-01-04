//!
//! This file generated automatically from xv.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XVideo", .global_id = 0 };

pub const PORT = u32;

pub const ENCODING = u32;

pub const Type = extern enum(c_uint) {
    @"InputMask" = 1,
    @"OutputMask" = 2,
    @"VideoMask" = 4,
    @"StillMask" = 8,
    @"ImageMask" = 16,
};

pub const ImageFormatInfoType = extern enum(c_uint) {
    @"RGB" = 0,
    @"YUV" = 1,
};

pub const ImageFormatInfoFormat = extern enum(c_uint) {
    @"Packed" = 0,
    @"Planar" = 1,
};

pub const AttributeFlag = extern enum(c_uint) {
    @"Gettable" = 1,
    @"Settable" = 2,
};

pub const VideoNotifyReason = extern enum(c_uint) {
    @"Started" = 0,
    @"Stopped" = 1,
    @"Busy" = 2,
    @"Preempted" = 3,
    @"HardError" = 4,
};

pub const ScanlineOrder = extern enum(c_uint) {
    @"TopToBottom" = 0,
    @"BottomToTop" = 1,
};

pub const GrabPortStatus = extern enum(c_uint) {
    @"Success" = 0,
    @"BadExtension" = 1,
    @"AlreadyGrabbed" = 2,
    @"InvalidTime" = 3,
    @"BadReply" = 4,
    @"BadAlloc" = 5,
};

/// @brief Rational
pub const Rational = struct {
    @"numerator": i32,
    @"denominator": i32,
};

/// @brief Format
pub const Format = struct {
    @"visual": xcb.VISUALID,
    @"depth": u8,
    @"pad0": [3]u8,
};

/// @brief AdaptorInfo
pub const AdaptorInfo = struct {
    @"base_id": xcb.xv.PORT,
    @"name_size": u16,
    @"num_ports": u16,
    @"num_formats": u16,
    @"type": u8,
    @"pad0": u8,
    @"name": []u8,
    @"formats": []xcb.xv.Format,
};

/// @brief EncodingInfo
pub const EncodingInfo = struct {
    @"encoding": xcb.xv.ENCODING,
    @"name_size": u16,
    @"width": u16,
    @"height": u16,
    @"pad0": [2]u8,
    @"rate": xcb.xv.Rational,
    @"name": []u8,
};

/// @brief Image
pub const Image = struct {
    @"id": u32,
    @"width": u16,
    @"height": u16,
    @"data_size": u32,
    @"num_planes": u32,
    @"pitches": []u32,
    @"offsets": []u32,
    @"data": []u8,
};

/// @brief AttributeInfo
pub const AttributeInfo = struct {
    @"flags": u32,
    @"min": i32,
    @"max": i32,
    @"size": u32,
    @"name": []u8,
};

/// @brief ImageFormatInfo
pub const ImageFormatInfo = struct {
    @"id": u32,
    @"type": u8,
    @"byte_order": u8,
    @"pad0": [2]u8,
    @"guid": [16]u8,
    @"bpp": u8,
    @"num_planes": u8,
    @"pad1": [2]u8,
    @"depth": u8,
    @"pad2": [3]u8,
    @"red_mask": u32,
    @"green_mask": u32,
    @"blue_mask": u32,
    @"format": u8,
    @"pad3": [3]u8,
    @"y_sample_bits": u32,
    @"u_sample_bits": u32,
    @"v_sample_bits": u32,
    @"vhorz_y_period": u32,
    @"vhorz_u_period": u32,
    @"vhorz_v_period": u32,
    @"vvert_y_period": u32,
    @"vvert_u_period": u32,
    @"vvert_v_period": u32,
    @"vcomp_order": [32]u8,
    @"vscanline_order": u8,
    @"pad4": [11]u8,
};

/// Opcode for BadPort.
pub const BadPortOpcode = 0;

/// @brief BadPortError
pub const BadPortError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadEncoding.
pub const BadEncodingOpcode = 1;

/// @brief BadEncodingError
pub const BadEncodingError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadControl.
pub const BadControlOpcode = 2;

/// @brief BadControlError
pub const BadControlError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for VideoNotify.
pub const VideoNotifyOpcode = 0;

/// @brief VideoNotifyEvent
pub const VideoNotifyEvent = struct {
    @"response_type": u8,
    @"reason": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"drawable": xcb.DRAWABLE,
    @"port": xcb.xv.PORT,
};

/// Opcode for PortNotify.
pub const PortNotifyOpcode = 1;

/// @brief PortNotifyEvent
pub const PortNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"port": xcb.xv.PORT,
    @"attribute": xcb.ATOM,
    @"value": i32,
};

/// @brief QueryExtensioncookie
pub const QueryExtensioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryExtensionRequest
pub const QueryExtensionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
};

/// @brief QueryExtensionReply
pub const QueryExtensionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major": u16,
    @"minor": u16,
};

/// @brief QueryAdaptorscookie
pub const QueryAdaptorscookie = struct {
    sequence: c_uint,
};

/// @brief QueryAdaptorsRequest
pub const QueryAdaptorsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief QueryAdaptorsReply
pub const QueryAdaptorsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_adaptors": u16,
    @"pad1": [22]u8,
    @"info": []xcb.xv.AdaptorInfo,
};

/// @brief QueryEncodingscookie
pub const QueryEncodingscookie = struct {
    sequence: c_uint,
};

/// @brief QueryEncodingsRequest
pub const QueryEncodingsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"port": xcb.xv.PORT,
};

/// @brief QueryEncodingsReply
pub const QueryEncodingsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_encodings": u16,
    @"pad1": [22]u8,
    @"info": []xcb.xv.EncodingInfo,
};

/// @brief GrabPortcookie
pub const GrabPortcookie = struct {
    sequence: c_uint,
};

/// @brief GrabPortRequest
pub const GrabPortRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"time": xcb.TIMESTAMP,
};

/// @brief GrabPortReply
pub const GrabPortReply = struct {
    @"response_type": u8,
    @"result": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief UngrabPortRequest
pub const UngrabPortRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"time": xcb.TIMESTAMP,
};

/// @brief PutVideoRequest
pub const PutVideoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"vid_x": i16,
    @"vid_y": i16,
    @"vid_w": u16,
    @"vid_h": u16,
    @"drw_x": i16,
    @"drw_y": i16,
    @"drw_w": u16,
    @"drw_h": u16,
};

/// @brief PutStillRequest
pub const PutStillRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"vid_x": i16,
    @"vid_y": i16,
    @"vid_w": u16,
    @"vid_h": u16,
    @"drw_x": i16,
    @"drw_y": i16,
    @"drw_w": u16,
    @"drw_h": u16,
};

/// @brief GetVideoRequest
pub const GetVideoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"vid_x": i16,
    @"vid_y": i16,
    @"vid_w": u16,
    @"vid_h": u16,
    @"drw_x": i16,
    @"drw_y": i16,
    @"drw_w": u16,
    @"drw_h": u16,
};

/// @brief GetStillRequest
pub const GetStillRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"vid_x": i16,
    @"vid_y": i16,
    @"vid_w": u16,
    @"vid_h": u16,
    @"drw_x": i16,
    @"drw_y": i16,
    @"drw_w": u16,
    @"drw_h": u16,
};

/// @brief StopVideoRequest
pub const StopVideoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
};

/// @brief SelectVideoNotifyRequest
pub const SelectVideoNotifyRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"onoff": u8,
    @"pad0": [3]u8,
};

/// @brief SelectPortNotifyRequest
pub const SelectPortNotifyRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"onoff": u8,
    @"pad0": [3]u8,
};

/// @brief QueryBestSizecookie
pub const QueryBestSizecookie = struct {
    sequence: c_uint,
};

/// @brief QueryBestSizeRequest
pub const QueryBestSizeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"vid_w": u16,
    @"vid_h": u16,
    @"drw_w": u16,
    @"drw_h": u16,
    @"motion": u8,
    @"pad0": [3]u8,
};

/// @brief QueryBestSizeReply
pub const QueryBestSizeReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"actual_width": u16,
    @"actual_height": u16,
};

/// @brief SetPortAttributeRequest
pub const SetPortAttributeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"attribute": xcb.ATOM,
    @"value": i32,
};

/// @brief GetPortAttributecookie
pub const GetPortAttributecookie = struct {
    sequence: c_uint,
};

/// @brief GetPortAttributeRequest
pub const GetPortAttributeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"attribute": xcb.ATOM,
};

/// @brief GetPortAttributeReply
pub const GetPortAttributeReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"value": i32,
};

/// @brief QueryPortAttributescookie
pub const QueryPortAttributescookie = struct {
    sequence: c_uint,
};

/// @brief QueryPortAttributesRequest
pub const QueryPortAttributesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"port": xcb.xv.PORT,
};

/// @brief QueryPortAttributesReply
pub const QueryPortAttributesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_attributes": u32,
    @"text_size": u32,
    @"pad1": [16]u8,
    @"attributes": []xcb.xv.AttributeInfo,
};

/// @brief ListImageFormatscookie
pub const ListImageFormatscookie = struct {
    sequence: c_uint,
};

/// @brief ListImageFormatsRequest
pub const ListImageFormatsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"port": xcb.xv.PORT,
};

/// @brief ListImageFormatsReply
pub const ListImageFormatsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_formats": u32,
    @"pad1": [20]u8,
    @"format": []xcb.xv.ImageFormatInfo,
};

/// @brief QueryImageAttributescookie
pub const QueryImageAttributescookie = struct {
    sequence: c_uint,
};

/// @brief QueryImageAttributesRequest
pub const QueryImageAttributesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"id": u32,
    @"width": u16,
    @"height": u16,
};

/// @brief QueryImageAttributesReply
pub const QueryImageAttributesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_planes": u32,
    @"data_size": u32,
    @"width": u16,
    @"height": u16,
    @"pad1": [12]u8,
    @"pitches": []u32,
    @"offsets": []u32,
};

/// @brief PutImageRequest
pub const PutImageRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"id": u32,
    @"src_x": i16,
    @"src_y": i16,
    @"src_w": u16,
    @"src_h": u16,
    @"drw_x": i16,
    @"drw_y": i16,
    @"drw_w": u16,
    @"drw_h": u16,
    @"width": u16,
    @"height": u16,
    @"data": []const u8,
};

/// @brief ShmPutImageRequest
pub const ShmPutImageRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"port": xcb.xv.PORT,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"shmseg": xcb.shm.SEG,
    @"id": u32,
    @"offset": u32,
    @"src_x": i16,
    @"src_y": i16,
    @"src_w": u16,
    @"src_h": u16,
    @"drw_x": i16,
    @"drw_y": i16,
    @"drw_w": u16,
    @"drw_h": u16,
    @"width": u16,
    @"height": u16,
    @"send_event": u8,
    @"pad0": [3]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
