//!
//! This file generated automatically from glx.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "GLX", .global_id = 0 };

pub const PIXMAP = u32;

pub const CONTEXT = u32;

pub const PBUFFER = u32;

pub const WINDOW = u32;

pub const FBCONFIG = u32;

pub const DRAWABLE = u32;

pub const FLOAT32 = f32;

pub const FLOAT64 = f64;

pub const BOOL32 = u32;

pub const CONTEXT_TAG = u32;

/// Opcode for Generic.
pub const GenericOpcode = -1;

/// Opcode for BadContext.
pub const BadContextOpcode = 0;

/// Opcode for BadContextState.
pub const BadContextStateOpcode = 1;

/// Opcode for BadDrawable.
pub const BadDrawableOpcode = 2;

/// Opcode for BadPixmap.
pub const BadPixmapOpcode = 3;

/// Opcode for BadContextTag.
pub const BadContextTagOpcode = 4;

/// Opcode for BadCurrentWindow.
pub const BadCurrentWindowOpcode = 5;

/// Opcode for BadRenderRequest.
pub const BadRenderRequestOpcode = 6;

/// Opcode for BadLargeRequest.
pub const BadLargeRequestOpcode = 7;

/// Opcode for UnsupportedPrivateRequest.
pub const UnsupportedPrivateRequestOpcode = 8;

/// Opcode for BadFBConfig.
pub const BadFBConfigOpcode = 9;

/// Opcode for BadPbuffer.
pub const BadPbufferOpcode = 10;

/// Opcode for BadCurrentDrawable.
pub const BadCurrentDrawableOpcode = 11;

/// Opcode for BadWindow.
pub const BadWindowOpcode = 12;

/// Opcode for GLXBadProfileARB.
pub const GLXBadProfileARBOpcode = 13;

/// @brief GenericError
pub const GenericError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"bad_value": u32,
    @"minor_opcode": u16,
    @"major_opcode": u8,
    @"pad0": [21]u8,
};

/// Opcode for PbufferClobber.
pub const PbufferClobberOpcode = 0;

/// @brief PbufferClobberEvent
pub const PbufferClobberEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event_type": u16,
    @"draw_type": u16,
    @"drawable": xcb.glx.DRAWABLE,
    @"b_mask": u32,
    @"aux_buffer": u16,
    @"x": u16,
    @"y": u16,
    @"width": u16,
    @"height": u16,
    @"count": u16,
    @"pad1": [4]u8,
};

/// Opcode for BufferSwapComplete.
pub const BufferSwapCompleteOpcode = 1;

/// @brief BufferSwapCompleteEvent
pub const BufferSwapCompleteEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event_type": u16,
    @"pad1": [2]u8,
    @"drawable": xcb.glx.DRAWABLE,
    @"ust_hi": u32,
    @"ust_lo": u32,
    @"msc_hi": u32,
    @"msc_lo": u32,
    @"sbc": u32,
};

pub const PBCET = extern enum(c_uint) {
    @"Damaged" = 32791,
    @"Saved" = 32792,
};

pub const PBCDT = extern enum(c_uint) {
    @"Window" = 32793,
    @"Pbuffer" = 32794,
};

/// @brief RenderRequest
pub const RenderRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"data": []const u8,
};

/// @brief RenderLargeRequest
pub const RenderLargeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"request_num": u16,
    @"request_total": u16,
    @"data_len": u32,
    @"data": []const u8,
};

/// @brief CreateContextRequest
pub const CreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"context": xcb.glx.CONTEXT,
    @"visual": xcb.VISUALID,
    @"screen": u32,
    @"share_list": xcb.glx.CONTEXT,
    @"is_direct": u8,
    @"pad0": [3]u8,
};

/// @brief DestroyContextRequest
pub const DestroyContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"context": xcb.glx.CONTEXT,
};

/// @brief MakeCurrentcookie
pub const MakeCurrentcookie = struct {
    sequence: c_uint,
};

/// @brief MakeCurrentRequest
pub const MakeCurrentRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"drawable": xcb.glx.DRAWABLE,
    @"context": xcb.glx.CONTEXT,
    @"old_context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief MakeCurrentReply
pub const MakeCurrentReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pad1": [20]u8,
};

/// @brief IsDirectcookie
pub const IsDirectcookie = struct {
    sequence: c_uint,
};

/// @brief IsDirectRequest
pub const IsDirectRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"context": xcb.glx.CONTEXT,
};

/// @brief IsDirectReply
pub const IsDirectReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"is_direct": u8,
    @"pad1": [23]u8,
};

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
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
    @"pad1": [16]u8,
};

/// @brief WaitGLRequest
pub const WaitGLRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief WaitXRequest
pub const WaitXRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief CopyContextRequest
pub const CopyContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"src": xcb.glx.CONTEXT,
    @"dest": xcb.glx.CONTEXT,
    @"mask": u32,
    @"src_context_tag": xcb.glx.CONTEXT_TAG,
};

pub const GC = extern enum(c_uint) {
    @"GL_CURRENT_BIT" = 1,
    @"GL_POINT_BIT" = 2,
    @"GL_LINE_BIT" = 4,
    @"GL_POLYGON_BIT" = 8,
    @"GL_POLYGON_STIPPLE_BIT" = 16,
    @"GL_PIXEL_MODE_BIT" = 32,
    @"GL_LIGHTING_BIT" = 64,
    @"GL_FOG_BIT" = 128,
    @"GL_DEPTH_BUFFER_BIT" = 256,
    @"GL_ACCUM_BUFFER_BIT" = 512,
    @"GL_STENCIL_BUFFER_BIT" = 1024,
    @"GL_VIEWPORT_BIT" = 2048,
    @"GL_TRANSFORM_BIT" = 4096,
    @"GL_ENABLE_BIT" = 8192,
    @"GL_COLOR_BUFFER_BIT" = 16384,
    @"GL_HINT_BIT" = 32768,
    @"GL_EVAL_BIT" = 65536,
    @"GL_LIST_BIT" = 131072,
    @"GL_TEXTURE_BIT" = 262144,
    @"GL_SCISSOR_BIT" = 524288,
    @"GL_ALL_ATTRIB_BITS" = 16777215,
};

/// @brief SwapBuffersRequest
pub const SwapBuffersRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"drawable": xcb.glx.DRAWABLE,
};

/// @brief UseXFontRequest
pub const UseXFontRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"font": xcb.FONT,
    @"first": u32,
    @"count": u32,
    @"list_base": u32,
};

/// @brief CreateGLXPixmapRequest
pub const CreateGLXPixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"screen": u32,
    @"visual": xcb.VISUALID,
    @"pixmap": xcb.PIXMAP,
    @"glx_pixmap": xcb.glx.PIXMAP,
};

/// @brief GetVisualConfigscookie
pub const GetVisualConfigscookie = struct {
    sequence: c_uint,
};

/// @brief GetVisualConfigsRequest
pub const GetVisualConfigsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"screen": u32,
};

/// @brief GetVisualConfigsReply
pub const GetVisualConfigsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_visuals": u32,
    @"num_properties": u32,
    @"pad1": [16]u8,
    @"property_list": []u32,
};

/// @brief DestroyGLXPixmapRequest
pub const DestroyGLXPixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"glx_pixmap": xcb.glx.PIXMAP,
};

/// @brief VendorPrivateRequest
pub const VendorPrivateRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"vendor_code": u32,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"data": []const u8,
};

/// @brief VendorPrivateWithReplycookie
pub const VendorPrivateWithReplycookie = struct {
    sequence: c_uint,
};

/// @brief VendorPrivateWithReplyRequest
pub const VendorPrivateWithReplyRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"vendor_code": u32,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"data": []const u8,
};

/// @brief VendorPrivateWithReplyReply
pub const VendorPrivateWithReplyReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"retval": u32,
    @"data1": [24]u8,
    @"data2": []u8,
};

/// @brief QueryExtensionsStringcookie
pub const QueryExtensionsStringcookie = struct {
    sequence: c_uint,
};

/// @brief QueryExtensionsStringRequest
pub const QueryExtensionsStringRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"screen": u32,
};

/// @brief QueryExtensionsStringReply
pub const QueryExtensionsStringReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"pad2": [16]u8,
};

/// @brief QueryServerStringcookie
pub const QueryServerStringcookie = struct {
    sequence: c_uint,
};

/// @brief QueryServerStringRequest
pub const QueryServerStringRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"screen": u32,
    @"name": u32,
};

/// @brief QueryServerStringReply
pub const QueryServerStringReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"str_len": u32,
    @"pad2": [16]u8,
    @"string": []u8,
};

/// @brief ClientInfoRequest
pub const ClientInfoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"major_version": u32,
    @"minor_version": u32,
    @"str_len": u32,
    @"string": []const u8,
};

/// @brief GetFBConfigscookie
pub const GetFBConfigscookie = struct {
    sequence: c_uint,
};

/// @brief GetFBConfigsRequest
pub const GetFBConfigsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
    @"screen": u32,
};

/// @brief GetFBConfigsReply
pub const GetFBConfigsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_FB_configs": u32,
    @"num_properties": u32,
    @"pad1": [16]u8,
    @"property_list": []u32,
};

/// @brief CreatePixmapRequest
pub const CreatePixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"screen": u32,
    @"fbconfig": xcb.glx.FBCONFIG,
    @"pixmap": xcb.PIXMAP,
    @"glx_pixmap": xcb.glx.PIXMAP,
    @"num_attribs": u32,
    @"attribs": []const u32,
};

/// @brief DestroyPixmapRequest
pub const DestroyPixmapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"glx_pixmap": xcb.glx.PIXMAP,
};

/// @brief CreateNewContextRequest
pub const CreateNewContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"context": xcb.glx.CONTEXT,
    @"fbconfig": xcb.glx.FBCONFIG,
    @"screen": u32,
    @"render_type": u32,
    @"share_list": xcb.glx.CONTEXT,
    @"is_direct": u8,
    @"pad0": [3]u8,
};

/// @brief QueryContextcookie
pub const QueryContextcookie = struct {
    sequence: c_uint,
};

/// @brief QueryContextRequest
pub const QueryContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 25,
    @"length": u16,
    @"context": xcb.glx.CONTEXT,
};

/// @brief QueryContextReply
pub const QueryContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_attribs": u32,
    @"pad1": [20]u8,
    @"attribs": []u32,
};

/// @brief MakeContextCurrentcookie
pub const MakeContextCurrentcookie = struct {
    sequence: c_uint,
};

/// @brief MakeContextCurrentRequest
pub const MakeContextCurrentRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 26,
    @"length": u16,
    @"old_context_tag": xcb.glx.CONTEXT_TAG,
    @"drawable": xcb.glx.DRAWABLE,
    @"read_drawable": xcb.glx.DRAWABLE,
    @"context": xcb.glx.CONTEXT,
};

/// @brief MakeContextCurrentReply
pub const MakeContextCurrentReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pad1": [20]u8,
};

/// @brief CreatePbufferRequest
pub const CreatePbufferRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 27,
    @"length": u16,
    @"screen": u32,
    @"fbconfig": xcb.glx.FBCONFIG,
    @"pbuffer": xcb.glx.PBUFFER,
    @"num_attribs": u32,
    @"attribs": []const u32,
};

/// @brief DestroyPbufferRequest
pub const DestroyPbufferRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 28,
    @"length": u16,
    @"pbuffer": xcb.glx.PBUFFER,
};

/// @brief GetDrawableAttributescookie
pub const GetDrawableAttributescookie = struct {
    sequence: c_uint,
};

/// @brief GetDrawableAttributesRequest
pub const GetDrawableAttributesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 29,
    @"length": u16,
    @"drawable": xcb.glx.DRAWABLE,
};

/// @brief GetDrawableAttributesReply
pub const GetDrawableAttributesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_attribs": u32,
    @"pad1": [20]u8,
    @"attribs": []u32,
};

/// @brief ChangeDrawableAttributesRequest
pub const ChangeDrawableAttributesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 30,
    @"length": u16,
    @"drawable": xcb.glx.DRAWABLE,
    @"num_attribs": u32,
    @"attribs": []const u32,
};

/// @brief CreateWindowRequest
pub const CreateWindowRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 31,
    @"length": u16,
    @"screen": u32,
    @"fbconfig": xcb.glx.FBCONFIG,
    @"window": xcb.WINDOW,
    @"glx_window": xcb.glx.WINDOW,
    @"num_attribs": u32,
    @"attribs": []const u32,
};

/// @brief DeleteWindowRequest
pub const DeleteWindowRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 32,
    @"length": u16,
    @"glxwindow": xcb.glx.WINDOW,
};

/// @brief SetClientInfoARBRequest
pub const SetClientInfoARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 33,
    @"length": u16,
    @"major_version": u32,
    @"minor_version": u32,
    @"num_versions": u32,
    @"gl_str_len": u32,
    @"glx_str_len": u32,
    @"gl_versions": []const u32,
    @"gl_extension_string": []const u8,
    @"glx_extension_string": []const u8,
};

/// @brief CreateContextAttribsARBRequest
pub const CreateContextAttribsARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 34,
    @"length": u16,
    @"context": xcb.glx.CONTEXT,
    @"fbconfig": xcb.glx.FBCONFIG,
    @"screen": u32,
    @"share_list": xcb.glx.CONTEXT,
    @"is_direct": u8,
    @"pad0": [3]u8,
    @"num_attribs": u32,
    @"attribs": []const u32,
};

/// @brief SetClientInfo2ARBRequest
pub const SetClientInfo2ARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 35,
    @"length": u16,
    @"major_version": u32,
    @"minor_version": u32,
    @"num_versions": u32,
    @"gl_str_len": u32,
    @"glx_str_len": u32,
    @"gl_versions": []const u32,
    @"gl_extension_string": []const u8,
    @"glx_extension_string": []const u8,
};

/// @brief NewListRequest
pub const NewListRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 101,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"list": u32,
    @"mode": u32,
};

/// @brief EndListRequest
pub const EndListRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 102,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief DeleteListsRequest
pub const DeleteListsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 103,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"list": u32,
    @"range": i32,
};

/// @brief GenListscookie
pub const GenListscookie = struct {
    sequence: c_uint,
};

/// @brief GenListsRequest
pub const GenListsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 104,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"range": i32,
};

/// @brief GenListsReply
pub const GenListsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": u32,
};

/// @brief FeedbackBufferRequest
pub const FeedbackBufferRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 105,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"size": i32,
    @"type": i32,
};

/// @brief SelectBufferRequest
pub const SelectBufferRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 106,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"size": i32,
};

/// @brief RenderModecookie
pub const RenderModecookie = struct {
    sequence: c_uint,
};

/// @brief RenderModeRequest
pub const RenderModeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 107,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"mode": u32,
};

/// @brief RenderModeReply
pub const RenderModeReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": u32,
    @"n": u32,
    @"new_mode": u32,
    @"pad1": [12]u8,
    @"data": []u32,
};

pub const RM = extern enum(c_uint) {
    @"GL_RENDER" = 7168,
    @"GL_FEEDBACK" = 7169,
    @"GL_SELECT" = 7170,
};

/// @brief Finishcookie
pub const Finishcookie = struct {
    sequence: c_uint,
};

/// @brief FinishRequest
pub const FinishRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 108,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief FinishReply
pub const FinishReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief PixelStorefRequest
pub const PixelStorefRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 109,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pname": u32,
    @"datum": xcb.glx.FLOAT32,
};

/// @brief PixelStoreiRequest
pub const PixelStoreiRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 110,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pname": u32,
    @"datum": i32,
};

/// @brief ReadPixelscookie
pub const ReadPixelscookie = struct {
    sequence: c_uint,
};

/// @brief ReadPixelsRequest
pub const ReadPixelsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 111,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"x": i32,
    @"y": i32,
    @"width": i32,
    @"height": i32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
    @"lsb_first": u8,
};

/// @brief ReadPixelsReply
pub const ReadPixelsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"data": []u8,
};

/// @brief GetBooleanvcookie
pub const GetBooleanvcookie = struct {
    sequence: c_uint,
};

/// @brief GetBooleanvRequest
pub const GetBooleanvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 112,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pname": i32,
};

/// @brief GetBooleanvReply
pub const GetBooleanvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": u8,
    @"pad2": [15]u8,
    @"data": []u8,
};

/// @brief GetClipPlanecookie
pub const GetClipPlanecookie = struct {
    sequence: c_uint,
};

/// @brief GetClipPlaneRequest
pub const GetClipPlaneRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 113,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"plane": i32,
};

/// @brief GetClipPlaneReply
pub const GetClipPlaneReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"data": []xcb.glx.FLOAT64,
};

/// @brief GetDoublevcookie
pub const GetDoublevcookie = struct {
    sequence: c_uint,
};

/// @brief GetDoublevRequest
pub const GetDoublevRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 114,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pname": u32,
};

/// @brief GetDoublevReply
pub const GetDoublevReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT64,
    @"pad2": [8]u8,
    @"data": []xcb.glx.FLOAT64,
};

/// @brief GetErrorcookie
pub const GetErrorcookie = struct {
    sequence: c_uint,
};

/// @brief GetErrorRequest
pub const GetErrorRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 115,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief GetErrorReply
pub const GetErrorReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"error": i32,
};

/// @brief GetFloatvcookie
pub const GetFloatvcookie = struct {
    sequence: c_uint,
};

/// @brief GetFloatvRequest
pub const GetFloatvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 116,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pname": u32,
};

/// @brief GetFloatvReply
pub const GetFloatvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetIntegervcookie
pub const GetIntegervcookie = struct {
    sequence: c_uint,
};

/// @brief GetIntegervRequest
pub const GetIntegervRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 117,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"pname": u32,
};

/// @brief GetIntegervReply
pub const GetIntegervReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetLightfvcookie
pub const GetLightfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetLightfvRequest
pub const GetLightfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 118,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"light": u32,
    @"pname": u32,
};

/// @brief GetLightfvReply
pub const GetLightfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetLightivcookie
pub const GetLightivcookie = struct {
    sequence: c_uint,
};

/// @brief GetLightivRequest
pub const GetLightivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 119,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"light": u32,
    @"pname": u32,
};

/// @brief GetLightivReply
pub const GetLightivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetMapdvcookie
pub const GetMapdvcookie = struct {
    sequence: c_uint,
};

/// @brief GetMapdvRequest
pub const GetMapdvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 120,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"query": u32,
};

/// @brief GetMapdvReply
pub const GetMapdvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT64,
    @"pad2": [8]u8,
    @"data": []xcb.glx.FLOAT64,
};

/// @brief GetMapfvcookie
pub const GetMapfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetMapfvRequest
pub const GetMapfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 121,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"query": u32,
};

/// @brief GetMapfvReply
pub const GetMapfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetMapivcookie
pub const GetMapivcookie = struct {
    sequence: c_uint,
};

/// @brief GetMapivRequest
pub const GetMapivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 122,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"query": u32,
};

/// @brief GetMapivReply
pub const GetMapivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetMaterialfvcookie
pub const GetMaterialfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetMaterialfvRequest
pub const GetMaterialfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 123,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"face": u32,
    @"pname": u32,
};

/// @brief GetMaterialfvReply
pub const GetMaterialfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetMaterialivcookie
pub const GetMaterialivcookie = struct {
    sequence: c_uint,
};

/// @brief GetMaterialivRequest
pub const GetMaterialivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 124,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"face": u32,
    @"pname": u32,
};

/// @brief GetMaterialivReply
pub const GetMaterialivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetPixelMapfvcookie
pub const GetPixelMapfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetPixelMapfvRequest
pub const GetPixelMapfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 125,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"map": u32,
};

/// @brief GetPixelMapfvReply
pub const GetPixelMapfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetPixelMapuivcookie
pub const GetPixelMapuivcookie = struct {
    sequence: c_uint,
};

/// @brief GetPixelMapuivRequest
pub const GetPixelMapuivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 126,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"map": u32,
};

/// @brief GetPixelMapuivReply
pub const GetPixelMapuivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": u32,
    @"pad2": [12]u8,
    @"data": []u32,
};

/// @brief GetPixelMapusvcookie
pub const GetPixelMapusvcookie = struct {
    sequence: c_uint,
};

/// @brief GetPixelMapusvRequest
pub const GetPixelMapusvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 127,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"map": u32,
};

/// @brief GetPixelMapusvReply
pub const GetPixelMapusvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": u16,
    @"pad2": [16]u8,
    @"data": []u16,
};

/// @brief GetPolygonStipplecookie
pub const GetPolygonStipplecookie = struct {
    sequence: c_uint,
};

/// @brief GetPolygonStippleRequest
pub const GetPolygonStippleRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 128,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"lsb_first": u8,
};

/// @brief GetPolygonStippleReply
pub const GetPolygonStippleReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"data": []u8,
};

/// @brief GetStringcookie
pub const GetStringcookie = struct {
    sequence: c_uint,
};

/// @brief GetStringRequest
pub const GetStringRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 129,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"name": u32,
};

/// @brief GetStringReply
pub const GetStringReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"pad2": [16]u8,
    @"string": []u8,
};

/// @brief GetTexEnvfvcookie
pub const GetTexEnvfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexEnvfvRequest
pub const GetTexEnvfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 130,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetTexEnvfvReply
pub const GetTexEnvfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetTexEnvivcookie
pub const GetTexEnvivcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexEnvivRequest
pub const GetTexEnvivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 131,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetTexEnvivReply
pub const GetTexEnvivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetTexGendvcookie
pub const GetTexGendvcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexGendvRequest
pub const GetTexGendvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 132,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"coord": u32,
    @"pname": u32,
};

/// @brief GetTexGendvReply
pub const GetTexGendvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT64,
    @"pad2": [8]u8,
    @"data": []xcb.glx.FLOAT64,
};

/// @brief GetTexGenfvcookie
pub const GetTexGenfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexGenfvRequest
pub const GetTexGenfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 133,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"coord": u32,
    @"pname": u32,
};

/// @brief GetTexGenfvReply
pub const GetTexGenfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetTexGenivcookie
pub const GetTexGenivcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexGenivRequest
pub const GetTexGenivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 134,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"coord": u32,
    @"pname": u32,
};

/// @brief GetTexGenivReply
pub const GetTexGenivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetTexImagecookie
pub const GetTexImagecookie = struct {
    sequence: c_uint,
};

/// @brief GetTexImageRequest
pub const GetTexImageRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 135,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"level": i32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
};

/// @brief GetTexImageReply
pub const GetTexImageReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [8]u8,
    @"width": i32,
    @"height": i32,
    @"depth": i32,
    @"pad2": [4]u8,
    @"data": []u8,
};

/// @brief GetTexParameterfvcookie
pub const GetTexParameterfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexParameterfvRequest
pub const GetTexParameterfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 136,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetTexParameterfvReply
pub const GetTexParameterfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetTexParameterivcookie
pub const GetTexParameterivcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexParameterivRequest
pub const GetTexParameterivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 137,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetTexParameterivReply
pub const GetTexParameterivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetTexLevelParameterfvcookie
pub const GetTexLevelParameterfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexLevelParameterfvRequest
pub const GetTexLevelParameterfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 138,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"level": i32,
    @"pname": u32,
};

/// @brief GetTexLevelParameterfvReply
pub const GetTexLevelParameterfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetTexLevelParameterivcookie
pub const GetTexLevelParameterivcookie = struct {
    sequence: c_uint,
};

/// @brief GetTexLevelParameterivRequest
pub const GetTexLevelParameterivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 139,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"level": i32,
    @"pname": u32,
};

/// @brief GetTexLevelParameterivReply
pub const GetTexLevelParameterivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief IsEnabledcookie
pub const IsEnabledcookie = struct {
    sequence: c_uint,
};

/// @brief IsEnabledRequest
pub const IsEnabledRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 140,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"capability": u32,
};

/// @brief IsEnabledReply
pub const IsEnabledReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": xcb.glx.BOOL32,
};

/// @brief IsListcookie
pub const IsListcookie = struct {
    sequence: c_uint,
};

/// @brief IsListRequest
pub const IsListRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 141,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"list": u32,
};

/// @brief IsListReply
pub const IsListReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": xcb.glx.BOOL32,
};

/// @brief FlushRequest
pub const FlushRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 142,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
};

/// @brief AreTexturesResidentcookie
pub const AreTexturesResidentcookie = struct {
    sequence: c_uint,
};

/// @brief AreTexturesResidentRequest
pub const AreTexturesResidentRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 143,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"n": i32,
    @"textures": []const u32,
};

/// @brief AreTexturesResidentReply
pub const AreTexturesResidentReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": xcb.glx.BOOL32,
    @"pad1": [20]u8,
    @"data": []u8,
};

/// @brief DeleteTexturesRequest
pub const DeleteTexturesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 144,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"n": i32,
    @"textures": []const u32,
};

/// @brief GenTexturescookie
pub const GenTexturescookie = struct {
    sequence: c_uint,
};

/// @brief GenTexturesRequest
pub const GenTexturesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 145,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"n": i32,
};

/// @brief GenTexturesReply
pub const GenTexturesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"data": []u32,
};

/// @brief IsTexturecookie
pub const IsTexturecookie = struct {
    sequence: c_uint,
};

/// @brief IsTextureRequest
pub const IsTextureRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 146,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"texture": u32,
};

/// @brief IsTextureReply
pub const IsTextureReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": xcb.glx.BOOL32,
};

/// @brief GetColorTablecookie
pub const GetColorTablecookie = struct {
    sequence: c_uint,
};

/// @brief GetColorTableRequest
pub const GetColorTableRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 147,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
};

/// @brief GetColorTableReply
pub const GetColorTableReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [8]u8,
    @"width": i32,
    @"pad2": [12]u8,
    @"data": []u8,
};

/// @brief GetColorTableParameterfvcookie
pub const GetColorTableParameterfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetColorTableParameterfvRequest
pub const GetColorTableParameterfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 148,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetColorTableParameterfvReply
pub const GetColorTableParameterfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetColorTableParameterivcookie
pub const GetColorTableParameterivcookie = struct {
    sequence: c_uint,
};

/// @brief GetColorTableParameterivRequest
pub const GetColorTableParameterivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 149,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetColorTableParameterivReply
pub const GetColorTableParameterivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetConvolutionFiltercookie
pub const GetConvolutionFiltercookie = struct {
    sequence: c_uint,
};

/// @brief GetConvolutionFilterRequest
pub const GetConvolutionFilterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 150,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
};

/// @brief GetConvolutionFilterReply
pub const GetConvolutionFilterReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [8]u8,
    @"width": i32,
    @"height": i32,
    @"pad2": [8]u8,
    @"data": []u8,
};

/// @brief GetConvolutionParameterfvcookie
pub const GetConvolutionParameterfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetConvolutionParameterfvRequest
pub const GetConvolutionParameterfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 151,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetConvolutionParameterfvReply
pub const GetConvolutionParameterfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetConvolutionParameterivcookie
pub const GetConvolutionParameterivcookie = struct {
    sequence: c_uint,
};

/// @brief GetConvolutionParameterivRequest
pub const GetConvolutionParameterivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 152,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetConvolutionParameterivReply
pub const GetConvolutionParameterivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetSeparableFiltercookie
pub const GetSeparableFiltercookie = struct {
    sequence: c_uint,
};

/// @brief GetSeparableFilterRequest
pub const GetSeparableFilterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 153,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
};

/// @brief GetSeparableFilterReply
pub const GetSeparableFilterReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [8]u8,
    @"row_w": i32,
    @"col_h": i32,
    @"pad2": [8]u8,
    @"rows_and_cols": []u8,
};

/// @brief GetHistogramcookie
pub const GetHistogramcookie = struct {
    sequence: c_uint,
};

/// @brief GetHistogramRequest
pub const GetHistogramRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 154,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
    @"reset": u8,
};

/// @brief GetHistogramReply
pub const GetHistogramReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [8]u8,
    @"width": i32,
    @"pad2": [12]u8,
    @"data": []u8,
};

/// @brief GetHistogramParameterfvcookie
pub const GetHistogramParameterfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetHistogramParameterfvRequest
pub const GetHistogramParameterfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 155,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetHistogramParameterfvReply
pub const GetHistogramParameterfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetHistogramParameterivcookie
pub const GetHistogramParameterivcookie = struct {
    sequence: c_uint,
};

/// @brief GetHistogramParameterivRequest
pub const GetHistogramParameterivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 156,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetHistogramParameterivReply
pub const GetHistogramParameterivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetMinmaxcookie
pub const GetMinmaxcookie = struct {
    sequence: c_uint,
};

/// @brief GetMinmaxRequest
pub const GetMinmaxRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 157,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"format": u32,
    @"type": u32,
    @"swap_bytes": u8,
    @"reset": u8,
};

/// @brief GetMinmaxReply
pub const GetMinmaxReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"data": []u8,
};

/// @brief GetMinmaxParameterfvcookie
pub const GetMinmaxParameterfvcookie = struct {
    sequence: c_uint,
};

/// @brief GetMinmaxParameterfvRequest
pub const GetMinmaxParameterfvRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 158,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetMinmaxParameterfvReply
pub const GetMinmaxParameterfvReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": xcb.glx.FLOAT32,
    @"pad2": [12]u8,
    @"data": []xcb.glx.FLOAT32,
};

/// @brief GetMinmaxParameterivcookie
pub const GetMinmaxParameterivcookie = struct {
    sequence: c_uint,
};

/// @brief GetMinmaxParameterivRequest
pub const GetMinmaxParameterivRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 159,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetMinmaxParameterivReply
pub const GetMinmaxParameterivReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetCompressedTexImageARBcookie
pub const GetCompressedTexImageARBcookie = struct {
    sequence: c_uint,
};

/// @brief GetCompressedTexImageARBRequest
pub const GetCompressedTexImageARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 160,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"level": i32,
};

/// @brief GetCompressedTexImageARBReply
pub const GetCompressedTexImageARBReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [8]u8,
    @"size": i32,
    @"pad2": [12]u8,
    @"data": []u8,
};

/// @brief DeleteQueriesARBRequest
pub const DeleteQueriesARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 161,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"n": i32,
    @"ids": []const u32,
};

/// @brief GenQueriesARBcookie
pub const GenQueriesARBcookie = struct {
    sequence: c_uint,
};

/// @brief GenQueriesARBRequest
pub const GenQueriesARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 162,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"n": i32,
};

/// @brief GenQueriesARBReply
pub const GenQueriesARBReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"data": []u32,
};

/// @brief IsQueryARBcookie
pub const IsQueryARBcookie = struct {
    sequence: c_uint,
};

/// @brief IsQueryARBRequest
pub const IsQueryARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 163,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"id": u32,
};

/// @brief IsQueryARBReply
pub const IsQueryARBReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"ret_val": xcb.glx.BOOL32,
};

/// @brief GetQueryivARBcookie
pub const GetQueryivARBcookie = struct {
    sequence: c_uint,
};

/// @brief GetQueryivARBRequest
pub const GetQueryivARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 164,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"target": u32,
    @"pname": u32,
};

/// @brief GetQueryivARBReply
pub const GetQueryivARBReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetQueryObjectivARBcookie
pub const GetQueryObjectivARBcookie = struct {
    sequence: c_uint,
};

/// @brief GetQueryObjectivARBRequest
pub const GetQueryObjectivARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 165,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"id": u32,
    @"pname": u32,
};

/// @brief GetQueryObjectivARBReply
pub const GetQueryObjectivARBReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": i32,
    @"pad2": [12]u8,
    @"data": []i32,
};

/// @brief GetQueryObjectuivARBcookie
pub const GetQueryObjectuivARBcookie = struct {
    sequence: c_uint,
};

/// @brief GetQueryObjectuivARBRequest
pub const GetQueryObjectuivARBRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 166,
    @"length": u16,
    @"context_tag": xcb.glx.CONTEXT_TAG,
    @"id": u32,
    @"pname": u32,
};

/// @brief GetQueryObjectuivARBReply
pub const GetQueryObjectuivARBReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [4]u8,
    @"n": u32,
    @"datum": u32,
    @"pad2": [12]u8,
    @"data": []u32,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
