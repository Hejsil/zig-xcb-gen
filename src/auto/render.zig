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
pub const PictFormatError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Picture.
pub const PictureOpcode = 1;

/// @brief PictureError
pub const PictureError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for PictOp.
pub const PictOpOpcode = 2;

/// @brief PictOpError
pub const PictOpError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for GlyphSet.
pub const GlyphSetOpcode = 3;

/// @brief GlyphSetError
pub const GlyphSetError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Glyph.
pub const GlyphOpcode = 4;

/// @brief GlyphError
pub const GlyphError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// @brief DIRECTFORMAT
pub const DIRECTFORMAT = extern struct {
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
pub const PICTFORMINFO = extern struct {
    @"id": xcb.render.PICTFORMAT,
    @"type": u8,
    @"depth": u8,
    @"pad0": [2]u8,
    @"direct": xcb.render.DIRECTFORMAT,
    @"colormap": xcb.COLORMAP,
};

/// @brief PICTVISUAL
pub const PICTVISUAL = extern struct {
    @"visual": xcb.VISUALID,
    @"format": xcb.render.PICTFORMAT,
};

/// @brief PICTDEPTH
pub const PICTDEPTH = extern struct {
    @"depth": u8,
    @"pad0": u8,
    @"num_visuals": u16,
    @"pad1": [4]u8,
    @"visuals": [*]xcb.render.PICTVISUAL,
};

/// @brief PICTSCREEN
pub const PICTSCREEN = extern struct {
    @"num_depths": u32,
    @"fallback": xcb.render.PICTFORMAT,
    @"depths": [*]xcb.render.PICTDEPTH,
};

/// @brief INDEXVALUE
pub const INDEXVALUE = extern struct {
    @"pixel": u32,
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"alpha": u16,
};

/// @brief COLOR
pub const COLOR = extern struct {
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"alpha": u16,
};

/// @brief POINTFIX
pub const POINTFIX = extern struct {
    @"x": xcb.render.FIXED,
    @"y": xcb.render.FIXED,
};

/// @brief LINEFIX
pub const LINEFIX = extern struct {
    @"p1": xcb.render.POINTFIX,
    @"p2": xcb.render.POINTFIX,
};

/// @brief TRIANGLE
pub const TRIANGLE = extern struct {
    @"p1": xcb.render.POINTFIX,
    @"p2": xcb.render.POINTFIX,
    @"p3": xcb.render.POINTFIX,
};

/// @brief TRAPEZOID
pub const TRAPEZOID = extern struct {
    @"top": xcb.render.FIXED,
    @"bottom": xcb.render.FIXED,
    @"left": xcb.render.LINEFIX,
    @"right": xcb.render.LINEFIX,
};

/// @brief GLYPHINFO
pub const GLYPHINFO = extern struct {
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
pub const QueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u32,
    @"client_minor_version": u32,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
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
pub const QueryPictFormatsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
};

/// @brief QueryPictFormatsReply
pub const QueryPictFormatsReply = extern struct {
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
    @"formats": [*]xcb.render.PICTFORMINFO,
    @"screens": [*]xcb.render.PICTSCREEN,
    @"subpixels": [*]u32,
};

/// @brief QueryPictIndexValuescookie
pub const QueryPictIndexValuescookie = struct {
    sequence: c_uint,
};

/// @brief QueryPictIndexValuesRequest
pub const QueryPictIndexValuesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"format": xcb.render.PICTFORMAT,
};

/// @brief QueryPictIndexValuesReply
pub const QueryPictIndexValuesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_values": u32,
    @"pad1": [20]u8,
    @"values": [*]xcb.render.INDEXVALUE,
};

/// @brief CreatePictureRequest
pub const CreatePictureRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"pid": xcb.render.PICTURE,
    @"drawable": xcb.DRAWABLE,
    @"format": xcb.render.PICTFORMAT,
    @"value_mask": u32,
};

/// @brief ChangePictureRequest
pub const ChangePictureRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"value_mask": u32,
};

/// @brief SetPictureClipRectanglesRequest
pub const SetPictureClipRectanglesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"clip_x_origin": i16,
    @"clip_y_origin": i16,
    @"rectangles": [*]xcb.RECTANGLE,
};

/// @brief FreePictureRequest
pub const FreePictureRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
};

/// @brief CompositeRequest
pub const CompositeRequest = extern struct {
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
pub const TrapezoidsRequest = extern struct {
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
    @"traps": [*]xcb.render.TRAPEZOID,
};

/// @brief TrianglesRequest
pub const TrianglesRequest = extern struct {
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
    @"triangles": [*]xcb.render.TRIANGLE,
};

/// @brief TriStripRequest
pub const TriStripRequest = extern struct {
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
    @"points": [*]xcb.render.POINTFIX,
};

/// @brief TriFanRequest
pub const TriFanRequest = extern struct {
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
    @"points": [*]xcb.render.POINTFIX,
};

/// @brief CreateGlyphSetRequest
pub const CreateGlyphSetRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"gsid": xcb.render.GLYPHSET,
    @"format": xcb.render.PICTFORMAT,
};

/// @brief ReferenceGlyphSetRequest
pub const ReferenceGlyphSetRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"gsid": xcb.render.GLYPHSET,
    @"existing": xcb.render.GLYPHSET,
};

/// @brief FreeGlyphSetRequest
pub const FreeGlyphSetRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"glyphset": xcb.render.GLYPHSET,
};

/// @brief AddGlyphsRequest
pub const AddGlyphsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"glyphset": xcb.render.GLYPHSET,
    @"glyphs_len": u32,
    @"glyphids": [*]u32,
    @"glyphs": [*]xcb.render.GLYPHINFO,
    @"data": [*]u8,
};

/// @brief FreeGlyphsRequest
pub const FreeGlyphsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"glyphset": xcb.render.GLYPHSET,
    @"glyphs": [*]xcb.render.GLYPH,
};

/// @brief CompositeGlyphs8Request
pub const CompositeGlyphs8Request = extern struct {
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
    @"glyphcmds": [*]u8,
};

/// @brief CompositeGlyphs16Request
pub const CompositeGlyphs16Request = extern struct {
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
    @"glyphcmds": [*]u8,
};

/// @brief CompositeGlyphs32Request
pub const CompositeGlyphs32Request = extern struct {
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
    @"glyphcmds": [*]u8,
};

/// @brief FillRectanglesRequest
pub const FillRectanglesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 26,
    @"length": u16,
    @"op": u8,
    @"pad0": [3]u8,
    @"dst": xcb.render.PICTURE,
    @"color": xcb.render.COLOR,
    @"rects": [*]xcb.RECTANGLE,
};

/// @brief CreateCursorRequest
pub const CreateCursorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 27,
    @"length": u16,
    @"cid": xcb.CURSOR,
    @"source": xcb.render.PICTURE,
    @"x": u16,
    @"y": u16,
};

/// @brief TRANSFORM
pub const TRANSFORM = extern struct {
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
pub const SetPictureTransformRequest = extern struct {
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
pub const QueryFiltersRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 29,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief QueryFiltersReply
pub const QueryFiltersReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_aliases": u32,
    @"num_filters": u32,
    @"pad1": [16]u8,
    @"aliases": [*]u16,
    @"filters": [*]xcb.STR,
};

/// @brief SetPictureFilterRequest
pub const SetPictureFilterRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 30,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"filter_len": u16,
    @"pad0": [2]u8,
    @"filter": [*]u8,
    @"values": [*]xcb.render.FIXED,
};

/// @brief ANIMCURSORELT
pub const ANIMCURSORELT = extern struct {
    @"cursor": xcb.CURSOR,
    @"delay": u32,
};

/// @brief CreateAnimCursorRequest
pub const CreateAnimCursorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 31,
    @"length": u16,
    @"cid": xcb.CURSOR,
    @"cursors": [*]xcb.render.ANIMCURSORELT,
};

/// @brief SPANFIX
pub const SPANFIX = extern struct {
    @"l": xcb.render.FIXED,
    @"r": xcb.render.FIXED,
    @"y": xcb.render.FIXED,
};

/// @brief TRAP
pub const TRAP = extern struct {
    @"top": xcb.render.SPANFIX,
    @"bot": xcb.render.SPANFIX,
};

/// @brief AddTrapsRequest
pub const AddTrapsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 32,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"x_off": i16,
    @"y_off": i16,
    @"traps": [*]xcb.render.TRAP,
};

/// @brief CreateSolidFillRequest
pub const CreateSolidFillRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 33,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"color": xcb.render.COLOR,
};

/// @brief CreateLinearGradientRequest
pub const CreateLinearGradientRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 34,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"p1": xcb.render.POINTFIX,
    @"p2": xcb.render.POINTFIX,
    @"num_stops": u32,
    @"stops": [*]xcb.render.FIXED,
    @"colors": [*]xcb.render.COLOR,
};

/// @brief CreateRadialGradientRequest
pub const CreateRadialGradientRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 35,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"inner": xcb.render.POINTFIX,
    @"outer": xcb.render.POINTFIX,
    @"inner_radius": xcb.render.FIXED,
    @"outer_radius": xcb.render.FIXED,
    @"num_stops": u32,
    @"stops": [*]xcb.render.FIXED,
    @"colors": [*]xcb.render.COLOR,
};

/// @brief CreateConicalGradientRequest
pub const CreateConicalGradientRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 36,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"center": xcb.render.POINTFIX,
    @"angle": xcb.render.FIXED,
    @"num_stops": u32,
    @"stops": [*]xcb.render.FIXED,
    @"colors": [*]xcb.render.COLOR,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
