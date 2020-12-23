//!
//! This file generated automatically from xprint.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XpExtension", .global_id = 0 };

pub const STRING8 = u8;

/// @brief PRINTER
pub const PRINTER = extern struct {
    @"nameLen": u32,
    @"name": [*]xcb.xprint.STRING8,
    @"descLen": u32,
    @"description": [*]xcb.xprint.STRING8,
};

pub const PCONTEXT = u32;

pub const GetDoc = extern enum(c_uint) {
    @"Finished" = 0,
    @"SecondConsumer" = 1,
};

pub const EvMask = extern enum(c_uint) {
    @"NoEventMask" = 0,
    @"PrintMask" = 1,
    @"AttributeMask" = 2,
};

pub const Detail = extern enum(c_uint) {
    @"StartJobNotify" = 1,
    @"EndJobNotify" = 2,
    @"StartDocNotify" = 3,
    @"EndDocNotify" = 4,
    @"StartPageNotify" = 5,
    @"EndPageNotify" = 6,
};

pub const Attr = extern enum(c_uint) {
    @"JobAttr" = 1,
    @"DocAttr" = 2,
    @"PageAttr" = 3,
    @"PrinterAttr" = 4,
    @"ServerAttr" = 5,
    @"MediumAttr" = 6,
    @"SpoolerAttr" = 7,
};

/// @brief PrintQueryVersioncookie
pub const PrintQueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief PrintQueryVersionRequest
pub const PrintQueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
};

/// @brief PrintQueryVersionReply
pub const PrintQueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u16,
    @"minor_version": u16,
};

/// @brief PrintGetPrinterListcookie
pub const PrintGetPrinterListcookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetPrinterListRequest
pub const PrintGetPrinterListRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"printerNameLen": u32,
    @"localeLen": u32,
    @"printer_name": [*]xcb.xprint.STRING8,
    @"locale": [*]xcb.xprint.STRING8,
};

/// @brief PrintGetPrinterListReply
pub const PrintGetPrinterListReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"listCount": u32,
    @"pad1": [20]u8,
    @"printers": [*]xcb.xprint.PRINTER,
};

/// @brief PrintRehashPrinterListRequest
pub const PrintRehashPrinterListRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
};

/// @brief CreateContextRequest
pub const CreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"context_id": u32,
    @"printerNameLen": u32,
    @"localeLen": u32,
    @"printerName": [*]xcb.xprint.STRING8,
    @"locale": [*]xcb.xprint.STRING8,
};

/// @brief PrintSetContextRequest
pub const PrintSetContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"context": u32,
};

/// @brief PrintGetContextcookie
pub const PrintGetContextcookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetContextRequest
pub const PrintGetContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
};

/// @brief PrintGetContextReply
pub const PrintGetContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context": u32,
};

/// @brief PrintDestroyContextRequest
pub const PrintDestroyContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"context": u32,
};

/// @brief PrintGetScreenOfContextcookie
pub const PrintGetScreenOfContextcookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetScreenOfContextRequest
pub const PrintGetScreenOfContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
};

/// @brief PrintGetScreenOfContextReply
pub const PrintGetScreenOfContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"root": xcb.WINDOW,
};

/// @brief PrintStartJobRequest
pub const PrintStartJobRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"output_mode": u8,
};

/// @brief PrintEndJobRequest
pub const PrintEndJobRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"cancel": u8,
};

/// @brief PrintStartDocRequest
pub const PrintStartDocRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"driver_mode": u8,
};

/// @brief PrintEndDocRequest
pub const PrintEndDocRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"cancel": u8,
};

/// @brief PrintPutDocumentDataRequest
pub const PrintPutDocumentDataRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"len_data": u32,
    @"len_fmt": u16,
    @"len_options": u16,
    @"data": [*]u8,
    @"doc_format": [*]xcb.xprint.STRING8,
    @"options": [*]xcb.xprint.STRING8,
};

/// @brief PrintGetDocumentDatacookie
pub const PrintGetDocumentDatacookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetDocumentDataRequest
pub const PrintGetDocumentDataRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"max_bytes": u32,
};

/// @brief PrintGetDocumentDataReply
pub const PrintGetDocumentDataReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"status_code": u32,
    @"finished_flag": u32,
    @"dataLen": u32,
    @"pad1": [12]u8,
    @"data": [*]u8,
};

/// @brief PrintStartPageRequest
pub const PrintStartPageRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief PrintEndPageRequest
pub const PrintEndPageRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"cancel": u8,
    @"pad0": [3]u8,
};

/// @brief PrintSelectInputRequest
pub const PrintSelectInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"event_mask": u32,
};

/// @brief PrintInputSelectedcookie
pub const PrintInputSelectedcookie = struct {
    sequence: c_uint,
};

/// @brief PrintInputSelectedRequest
pub const PrintInputSelectedRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
};

/// @brief PrintInputSelectedReply
pub const PrintInputSelectedReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_mask": u32,
    @"all_events_mask": u32,
};

/// @brief PrintGetAttributescookie
pub const PrintGetAttributescookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetAttributesRequest
pub const PrintGetAttributesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"pool": u8,
    @"pad0": [3]u8,
};

/// @brief PrintGetAttributesReply
pub const PrintGetAttributesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"stringLen": u32,
    @"pad1": [20]u8,
    @"attributes": [*]xcb.xprint.STRING8,
};

/// @brief PrintGetOneAttributescookie
pub const PrintGetOneAttributescookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetOneAttributesRequest
pub const PrintGetOneAttributesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"nameLen": u32,
    @"pool": u8,
    @"pad0": [3]u8,
    @"name": [*]xcb.xprint.STRING8,
};

/// @brief PrintGetOneAttributesReply
pub const PrintGetOneAttributesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"valueLen": u32,
    @"pad1": [20]u8,
    @"value": [*]xcb.xprint.STRING8,
};

/// @brief PrintSetAttributesRequest
pub const PrintSetAttributesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"stringLen": u32,
    @"pool": u8,
    @"rule": u8,
    @"pad0": [2]u8,
    @"attributes": [*]xcb.xprint.STRING8,
};

/// @brief PrintGetPageDimensionscookie
pub const PrintGetPageDimensionscookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetPageDimensionsRequest
pub const PrintGetPageDimensionsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
};

/// @brief PrintGetPageDimensionsReply
pub const PrintGetPageDimensionsReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width": u16,
    @"height": u16,
    @"offset_x": u16,
    @"offset_y": u16,
    @"reproducible_width": u16,
    @"reproducible_height": u16,
};

/// @brief PrintQueryScreenscookie
pub const PrintQueryScreenscookie = struct {
    sequence: c_uint,
};

/// @brief PrintQueryScreensRequest
pub const PrintQueryScreensRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
};

/// @brief PrintQueryScreensReply
pub const PrintQueryScreensReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"listCount": u32,
    @"pad1": [20]u8,
    @"roots": [*]xcb.WINDOW,
};

/// @brief PrintSetImageResolutioncookie
pub const PrintSetImageResolutioncookie = struct {
    sequence: c_uint,
};

/// @brief PrintSetImageResolutionRequest
pub const PrintSetImageResolutionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"image_resolution": u16,
};

/// @brief PrintSetImageResolutionReply
pub const PrintSetImageResolutionReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"previous_resolutions": u16,
};

/// @brief PrintGetImageResolutioncookie
pub const PrintGetImageResolutioncookie = struct {
    sequence: c_uint,
};

/// @brief PrintGetImageResolutionRequest
pub const PrintGetImageResolutionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"context": xcb.xprint.PCONTEXT,
};

/// @brief PrintGetImageResolutionReply
pub const PrintGetImageResolutionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"image_resolution": u16,
};

/// Opcode for Notify.
pub const NotifyOpcode = 0;

/// @brief NotifyEvent
pub const NotifyEvent = extern struct {
    @"response_type": u8,
    @"detail": u8,
    @"sequence": u16,
    @"context": xcb.xprint.PCONTEXT,
    @"cancel": u8,
};

/// Opcode for AttributNotify.
pub const AttributNotifyOpcode = 1;

/// @brief AttributNotifyEvent
pub const AttributNotifyEvent = extern struct {
    @"response_type": u8,
    @"detail": u8,
    @"sequence": u16,
    @"context": xcb.xprint.PCONTEXT,
};

/// Opcode for BadContext.
pub const BadContextOpcode = 0;

/// @brief BadContextError
pub const BadContextError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadSequence.
pub const BadSequenceOpcode = 1;

/// @brief BadSequenceError
pub const BadSequenceError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
