//!
//! This file generated automatically from render.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "RENDER", .global_id = 0 };

pub const PictType = extern enum(c_uint) {
    @"Indexed" = 0,
    @"Direct" = 1,
};

pub const Picture = extern enum(c_uint) {
    @"None" = 0,
};

pub const PictOp = extern enum(c_uint) {
    @"Clear" = 0,
    @"Src" = 1,
    @"Dst" = 2,
    @"Over" = 3,
    @"OverReverse" = 4,
    @"In" = 5,
    @"InReverse" = 6,
    @"Out" = 7,
    @"OutReverse" = 8,
    @"Atop" = 9,
    @"AtopReverse" = 10,
    @"Xor" = 11,
    @"Add" = 12,
    @"Saturate" = 13,
    @"DisjointClear" = 16,
    @"DisjointSrc" = 17,
    @"DisjointDst" = 18,
    @"DisjointOver" = 19,
    @"DisjointOverReverse" = 20,
    @"DisjointIn" = 21,
    @"DisjointInReverse" = 22,
    @"DisjointOut" = 23,
    @"DisjointOutReverse" = 24,
    @"DisjointAtop" = 25,
    @"DisjointAtopReverse" = 26,
    @"DisjointXor" = 27,
    @"ConjointClear" = 32,
    @"ConjointSrc" = 33,
    @"ConjointDst" = 34,
    @"ConjointOver" = 35,
    @"ConjointOverReverse" = 36,
    @"ConjointIn" = 37,
    @"ConjointInReverse" = 38,
    @"ConjointOut" = 39,
    @"ConjointOutReverse" = 40,
    @"ConjointAtop" = 41,
    @"ConjointAtopReverse" = 42,
    @"ConjointXor" = 43,
    @"Multiply" = 48,
    @"Screen" = 49,
    @"Overlay" = 50,
    @"Darken" = 51,
    @"Lighten" = 52,
    @"ColorDodge" = 53,
    @"ColorBurn" = 54,
    @"HardLight" = 55,
    @"SoftLight" = 56,
    @"Difference" = 57,
    @"Exclusion" = 58,
    @"HSLHue" = 59,
    @"HSLSaturation" = 60,
    @"HSLColor" = 61,
    @"HSLLuminosity" = 62,
};

pub const PolyEdge = extern enum(c_uint) {
    @"Sharp" = 0,
    @"Smooth" = 1,
};

pub const PolyMode = extern enum(c_uint) {
    @"Precise" = 0,
    @"Imprecise" = 1,
};

pub const CP = extern enum(c_uint) {
    @"Repeat" = 1,
    @"AlphaMap" = 2,
    @"AlphaXOrigin" = 4,
    @"AlphaYOrigin" = 8,
    @"ClipXOrigin" = 16,
    @"ClipYOrigin" = 32,
    @"ClipMask" = 64,
    @"GraphicsExposure" = 128,
    @"SubwindowMode" = 256,
    @"PolyEdge" = 512,
    @"PolyMode" = 1024,
    @"Dither" = 2048,
    @"ComponentAlpha" = 4096,
};

pub const SubPixel = extern enum(c_uint) {
    @"Unknown" = 0,
    @"HorizontalRGB" = 1,
    @"HorizontalBGR" = 2,
    @"VerticalRGB" = 3,
    @"VerticalBGR" = 4,
    @"None" = 5,
};

pub const Repeat = extern enum(c_uint) {
    @"None" = 0,
    @"Normal" = 1,
    @"Pad" = 2,
    @"Reflect" = 3,
};

pub const GLYPH = u32;

pub const GLYPHSET = u32;

pub const PICTURE = u32;

pub const PICTFORMAT = u32;

pub const FIXED = i32;

/// Opcode for PictFormat.
pub const PictFormatOpcode = 0;

/// @brief PictFormatError
pub const PictFormatError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Picture.
pub const PictureOpcode = 1;

/// @brief PictureError
pub const PictureError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for PictOp.
pub const PictOpOpcode = 2;

/// @brief PictOpError
pub const PictOpError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for GlyphSet.
pub const GlyphSetOpcode = 3;

/// @brief GlyphSetError
pub const GlyphSetError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Glyph.
pub const GlyphOpcode = 4;

/// @brief GlyphError
pub const GlyphError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// @brief DIRECTFORMAT
pub const DIRECTFORMAT = struct {
    @"red_shift": u16,
    @"red_mask": u16,
    @"green_shift": u16,
    @"green_mask": u16,
    @"blue_shift": u16,
    @"blue_mask": u16,
    @"alpha_shift": u16,
    @"alpha_mask": u16,
};

/// @brief PICTFORMINFO
pub const PICTFORMINFO = struct {
    @"id": xcb.render.PICTFORMAT,
    @"type": u8,
    @"depth": u8,
    @"pad0": [2]u8,
    @"direct": xcb.render.DIRECTFORMAT,
    @"colormap": xcb.COLORMAP,
};

/// @brief PICTVISUAL
pub const PICTVISUAL = struct {
    @"visual": xcb.VISUALID,
    @"format": xcb.render.PICTFORMAT,
};

/// @brief PICTDEPTH
pub const PICTDEPTH = struct {
    @"depth": u8,
    @"pad0": u8,
    @"num_visuals": u16,
    @"pad1": [4]u8,
    @"visuals": []xcb.render.PICTVISUAL,
};

/// @brief PICTSCREEN
pub const PICTSCREEN = struct {
    @"num_depths": u32,
    @"fallback": xcb.render.PICTFORMAT,
    @"depths": []xcb.render.PICTDEPTH,
};

/// @brief INDEXVALUE
pub const INDEXVALUE = struct {
    @"pixel": u32,
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"alpha": u16,
};

/// @brief COLOR
pub const COLOR = struct {
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"alpha": u16,
};

/// @brief POINTFIX
pub const POINTFIX = struct {
    @"x": xcb.render.FIXED,
    @"y": xcb.render.FIXED,
};

/// @brief LINEFIX
pub const LINEFIX = struct {
    @"p1": xcb.render.POINTFIX,
    @"p2": xcb.render.POINTFIX,
};

/// @brief TRIANGLE
pub const TRIANGLE = struct {
    @"p1": xcb.render.POINTFIX,
    @"p2": xcb.render.POINTFIX,
    @"p3": xcb.render.POINTFIX,
};

/// @brief TRAPEZOID
pub const TRAPEZOID = struct {
    @"top": xcb.render.FIXED,
    @"bottom": xcb.render.FIXED,
    @"left": xcb.render.LINEFIX,
    @"right": xcb.render.LINEFIX,
};

/// @brief GLYPHINFO
pub const GLYPHINFO = struct {
    @"width": u16,
    @"height": u16,
    @"x": i16,
    @"y": i16,
    @"x_off": i16,
    @"y_off": i16,
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

/// @brief QueryPictFormatscookie
pub const QueryPictFormatscookie = struct {
    sequence: c_uint,
};

/// @brief QueryPictFormatsRequest
pub const QueryPictFormatsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
};

/// @brief QueryPictFormatsReply
pub const QueryPictFormatsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_formats": u32,
    @"num_screens": u32,
    @"num_depths": u32,
    @"num_visuals": u32,
    @"num_subpixel": u32,
    @"pad1": [4]u8,
    @"formats": []xcb.render.PICTFORMINFO,
    @"screens": []xcb.render.PICTSCREEN,
    @"subpixels": []u32,
};

/// @brief QueryPictIndexValuescookie
pub const QueryPictIndexValuescookie = struct {
    sequence: c_uint,
};

/// @brief QueryPictIndexValuesRequest
pub const QueryPictIndexValuesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"format": xcb.render.PICTFORMAT,
};

/// @brief QueryPictIndexValuesReply
pub const QueryPictIndexValuesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_values": u32,
    @"pad1": [20]u8,
    @"values": []xcb.render.INDEXVALUE,
};

/// @brief CreatePictureRequest
pub const CreatePictureRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"pid": xcb.render.PICTURE,
    @"drawable": xcb.DRAWABLE,
    @"format": xcb.render.PICTFORMAT,
    @"value_mask": u32,
};

/// @brief ChangePictureRequest
pub const ChangePictureRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"value_mask": u32,
};

/// @brief SetPictureClipRectanglesRequest
pub const SetPictureClipRectanglesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"clip_x_origin": i16,
    @"clip_y_origin": i16,
    @"rectangles": []const xcb.RECTANGLE,
};

/// @brief FreePictureRequest
pub const FreePictureRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
};

/// @brief CompositeRequest
pub const CompositeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"mask": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"src_x": i16,
    @"src_y": i16,
    @"mask_x": i16,
    @"mask_y": i16,
    @"dst_x": i16,
    @"dst_y": i16,
    @"width": u16,
    @"height": u16,
};

/// @brief TrapezoidsRequest
pub const TrapezoidsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"src_x": i16,
    @"src_y": i16,
    @"traps": []const xcb.render.TRAPEZOID,
};

/// @brief TrianglesRequest
pub const TrianglesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"src_x": i16,
    @"src_y": i16,
    @"triangles": []const xcb.render.TRIANGLE,
};

/// @brief TriStripRequest
pub const TriStripRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"src_x": i16,
    @"src_y": i16,
    @"points": []const xcb.render.POINTFIX,
};

/// @brief TriFanRequest
pub const TriFanRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"src_x": i16,
    @"src_y": i16,
    @"points": []const xcb.render.POINTFIX,
};

/// @brief CreateGlyphSetRequest
pub const CreateGlyphSetRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"gsid": xcb.render.GLYPHSET,
    @"format": xcb.render.PICTFORMAT,
};

/// @brief ReferenceGlyphSetRequest
pub const ReferenceGlyphSetRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"gsid": xcb.render.GLYPHSET,
    @"existing": xcb.render.GLYPHSET,
};

/// @brief FreeGlyphSetRequest
pub const FreeGlyphSetRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"glyphset": xcb.render.GLYPHSET,
};

/// @brief AddGlyphsRequest
pub const AddGlyphsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"glyphset": xcb.render.GLYPHSET,
    @"glyphs_len": u32,
    @"glyphids": []const u32,
    @"glyphs": []const xcb.render.GLYPHINFO,
    @"data": []const u8,
};

/// @brief FreeGlyphsRequest
pub const FreeGlyphsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"glyphset": xcb.render.GLYPHSET,
    @"glyphs": []const xcb.render.GLYPH,
};

/// @brief CompositeGlyphs8Request
pub const CompositeGlyphs8Request = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"glyphset": xcb.render.GLYPHSET,
    @"src_x": i16,
    @"src_y": i16,
    @"glyphcmds": []const u8,
};

/// @brief CompositeGlyphs16Request
pub const CompositeGlyphs16Request = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"glyphset": xcb.render.GLYPHSET,
    @"src_x": i16,
    @"src_y": i16,
    @"glyphcmds": []const u8,
};

/// @brief CompositeGlyphs32Request
pub const CompositeGlyphs32Request = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 25,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"src": xcb.render.PICTURE,
    @"dst": xcb.render.PICTURE,
    @"mask_format": xcb.render.PICTFORMAT,
    @"glyphset": xcb.render.GLYPHSET,
    @"src_x": i16,
    @"src_y": i16,
    @"glyphcmds": []const u8,
};

/// @brief FillRectanglesRequest
pub const FillRectanglesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 26,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"dst": xcb.render.PICTURE,
    @"color": xcb.render.COLOR,
    @"rects": []const xcb.RECTANGLE,
};

/// @brief CreateCursorRequest
pub const CreateCursorRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 27,
    @"length": u16,
    @"cid": xcb.CURSOR,
    @"source": xcb.render.PICTURE,
    @"x": u16,
    @"y": u16,
};

/// @brief TRANSFORM
pub const TRANSFORM = struct {
    @"matrix11": xcb.render.FIXED,
    @"matrix12": xcb.render.FIXED,
    @"matrix13": xcb.render.FIXED,
    @"matrix21": xcb.render.FIXED,
    @"matrix22": xcb.render.FIXED,
    @"matrix23": xcb.render.FIXED,
    @"matrix31": xcb.render.FIXED,
    @"matrix32": xcb.render.FIXED,
    @"matrix33": xcb.render.FIXED,
};

/// @brief SetPictureTransformRequest
pub const SetPictureTransformRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 28,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"transform": xcb.render.TRANSFORM,
};

/// @brief QueryFilterscookie
pub const QueryFilterscookie = struct {
    sequence: c_uint,
};

/// @brief QueryFiltersRequest
pub const QueryFiltersRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 29,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief QueryFiltersReply
pub const QueryFiltersReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_aliases": u32,
    @"num_filters": u32,
    @"pad1": [16]u8,
    @"aliases": []u16,
    @"filters": []xcb.STR,
};

/// @brief SetPictureFilterRequest
pub const SetPictureFilterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 30,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"filter_len": u16,
    @"pad0": [2]u8,
    @"filter": []const u8,
    @"values": []const xcb.render.FIXED,
};

/// @brief ANIMCURSORELT
pub const ANIMCURSORELT = struct {
    @"cursor": xcb.CURSOR,
    @"delay": u32,
};

/// @brief CreateAnimCursorRequest
pub const CreateAnimCursorRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 31,
    @"length": u16,
    @"cid": xcb.CURSOR,
    @"cursors": []const xcb.render.ANIMCURSORELT,
};

/// @brief SPANFIX
pub const SPANFIX = struct {
    @"l": xcb.render.FIXED,
    @"r": xcb.render.FIXED,
    @"y": xcb.render.FIXED,
};

/// @brief TRAP
pub const TRAP = struct {
    @"top": xcb.render.SPANFIX,
    @"bot": xcb.render.SPANFIX,
};

/// @brief AddTrapsRequest
pub const AddTrapsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 32,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"x_off": i16,
    @"y_off": i16,
    @"traps": []const xcb.render.TRAP,
};

/// @brief CreateSolidFillRequest
pub const CreateSolidFillRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 33,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"color": xcb.render.COLOR,
};

/// @brief CreateLinearGradientRequest
pub const CreateLinearGradientRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 34,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"p1": xcb.render.POINTFIX,
    @"p2": xcb.render.POINTFIX,
    @"num_stops": u32,
    @"stops": []const xcb.render.FIXED,
    @"colors": []const xcb.render.COLOR,
};

/// @brief CreateRadialGradientRequest
pub const CreateRadialGradientRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 35,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"inner": xcb.render.POINTFIX,
    @"outer": xcb.render.POINTFIX,
    @"inner_radius": xcb.render.FIXED,
    @"outer_radius": xcb.render.FIXED,
    @"num_stops": u32,
    @"stops": []const xcb.render.FIXED,
    @"colors": []const xcb.render.COLOR,
};

/// @brief CreateConicalGradientRequest
pub const CreateConicalGradientRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 36,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"center": xcb.render.POINTFIX,
    @"angle": xcb.render.FIXED,
    @"num_stops": u32,
    @"stops": []const xcb.render.FIXED,
    @"colors": []const xcb.render.COLOR,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
