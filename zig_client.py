#!/usr/bin/env python
from __future__ import print_function
import getopt
import sys
import re

# Jump to the bottom of this file for the main routine

#config settings (can be changed with commandline options)
config_server_side = False

# Some hacks to make the API more readable, and to keep backwards compability
zigname_re = re.compile('([A-Z0-9][a-z]+|[A-Z0-9]+(?![a-z])|[a-z]+)')
zigname_special_cases = {'DECnet':'decnet'}

_int_types = {
    'uint8_t': 'u8',
    'uint16_t': 'u16',
    'uint32_t': 'u32',
    'uint64_t': 'u64',
    'int8_t': 'i8',
    'int16_t': 'i16',
    'int32_t': 'i32',
    'int64_t': 'i64',
    'char': 'u8',
    'float': 'f32',
    'double': 'f64',
    'void': 'u8',
}

ziglines = []
ziglevel = 0
_ns = None

# global variable to keep track of serializers and
# switch data types due to weird dependencies
finished_serializers = []
finished_sizeof = []
def zig(fmt, *values):
    ziglines.append(fmt % values)

def zig_wr_stringlist(indent, strlist):
    for string in strlist:
        zig("%s%s", indent, string)


def make_doc_comment(string):
    for line in string.splitlines():
        zig("/// %s" % line)

def _t(names):
    if len(names) == 1:
        if names[0] in _int_types:
            parts = [_int_types[names[0]]]
        else:
            parts = names
    elif len(names) == 2:
        parts = names
    elif _ns.is_ext:
        parts = [names[0], names[1].lower(), names[-1]]
    else:
        parts = [names[0], names[-1]]
    return '.'.join(parts)


def zig_open(self):
    global _ns
    _ns = self.namespace

    # Build the type-name collision avoidance table used by zig_enum

    zig('//!')
    zig('//! This file generated automatically from %s by zig_client.py.', _ns.file)
    zig('//! Edit at your peril.')
    zig('//!')
    zig('')
    zig('const xcb = @import("../xcb.zig");')
    zig('')

    if _ns.is_ext:
        zig('pub const id = xcb.Extension{ .name = "%s", .global_id = 0 };', _ns.ext_xname)
        zig('')

def zig_close(_self):
    zig('test "" {@import("std").testing.refAllDecls(@This());}')

    # Write source file
    cfile = open('src/auto/%s.zig' % _ns.header, 'w')
    for line in ziglines:
        cfile.write(line)
        cfile.write('\n')
    cfile.close()

def zig_enum(self, name):
    tname = name[-1]

    zig('pub const %s = extern enum(c_uint) {', tname)

    count = len(self.values)

    for (enam, value) in self.values:
        count = count - 1
        equals = ' = ' if value != '' else ''
        if hasattr(self, "doc") and self.doc and enam in self.doc.fields:
            make_doc_comment(self.doc.fields[enam])
        zig('@"%s"%s%s,', enam, equals, value)

    zig('};')
    zig('')

def zig_type_setup(self, name, postfix):
    self.type_name = name[-1] + '_'.join(postfix)
    self.namespace = '.'.join(name[0:-1]).lower()

    self.zig_cookie_type = name[-1] + 'cookie'

    if self.is_switch:
        self.zig_container = 'struct'
        for bitcase in self.bitcases:
            bitcase.zig_field_name = bitcase.field_name
            bitcase_name = bitcase.field_type if bitcase.type.has_name else name
            zig_type_setup(bitcase.type, bitcase_name, ())

    elif self.is_container:
        self.zig_container = 'union' if self.is_union else 'struct'

        for field in self.fields:
            if field.type.is_event:
                field.zig_field_type = _t(field.field_type) + 'Event'
            else:
                field.zig_field_type = _t(field.field_type)

            field.zig_field_name = field.field_name
            field.zig_subscript = '[%d]' % field.type.nmemb if (field.type.nmemb and field.type.nmemb > 1) else ''

            zig_type_setup(field.type, field.field_type, ())
            if field.type.is_list:
                zig_type_setup(field.type.member, field.field_type, ())

def zig_simple(self, name):
    zig_type_setup(self, name, ())
    if self.name != name:
        zig('pub const %s = %s;', self.type_name, _t(self.name))
        zig('')

def zig_complex(self, force_packed = False):
    zig('/// @brief %s', self.type_name)
    zig('pub const %s = %s %s {', self.type_name, 'packed' if force_packed else 'extern', self.zig_container)

    struct_fields = []

    for field in self.fields:
        if field.wire:
            struct_fields.append(field)

    def zig_complex_field(self, field):
        value = ''

        # We can give a default value to 'minor_opcode' on request types
        if isinstance(self, Request):
            if field.zig_field_name == 'minor_opcode':
                value = '=' + self.opcode

        if field.type.fixed_size():
            zig('@"%s": %s%s%s,', field.zig_field_name, field.zig_subscript, field.zig_field_type, value)
        elif field.type.is_list:
            zig('@"%s": [*]%s,', field.zig_field_name, field.zig_field_type)


    if not self.is_switch:
        for field in struct_fields:
            zig_complex_field(self, field)
    else:
        for b in self.bitcases:
            if b.type.has_name:
                zig('@"%s": extern struct {', b.zig_field_name)
            for field in b.type.fields:
                zig_complex_field(self, field)
            if b.type.has_name:
                zig('},')

    zig('};')
    zig('')

def zig_struct(self, name):
    zig_type_setup(self, name, ())
    zig_complex(self)

def zig_union(self, name):
    zig_type_setup(self, name, ())
    zig_complex(self)

def zig_opcode(name, opcode):
    zig('/// Opcode for %s.', name[-1])
    zig('pub const %sOpcode = %s;', name[-1], opcode)
    zig('')

def zig_cookie(self, _name):
    zig(' /// @brief %s', self.zig_cookie_type)
    zig('pub const %s = struct {', self.zig_cookie_type)
    zig('    sequence: c_uint,')
    zig('};')
    zig('')

def zig_request(self, name):
    zig_type_setup(self, name, ('Request',))

    if self.reply:
        # Cookie type declaration
        zig_cookie(self, name)

    # Request structure declaration
    zig_complex(self)

    if self.reply:
        zig_type_setup(self.reply, name, ('Reply',))
        # Reply structure definition
        zig_complex(self.reply)


def zig_eventstruct(self, name):
    zig_type_setup(self, name, ())
    zig_complex(self)

def zig_event(self, name):
    # The generic event structure xcb_ge_event_t has the full_sequence field
    # at the 32byte boundary. That's why we've to inject this field into GE
    # events while generating the structure for them. Otherwise we would read
    # garbage (the internal full_sequence) when accessing normal event fields
    # there.
    force_packed = False
    if hasattr(self, 'is_ge_event') and self.is_ge_event and self.name == name:
        event_size = 0
        for field in self.fields:
            if field.type.size is not None and field.type.nmemb is not None:
                event_size += field.type.size * field.type.nmemb
            if event_size == 32:
                full_sequence = Field(tcard32, tcard32.name, 'full_sequence', False, True, True)
                idx = self.fields.index(field)
                self.fields.insert(idx + 1, full_sequence)

                # If the event contains any 64-bit extended fields, they need
                # to remain aligned on a 64-bit boundary.  Adding full_sequence
                # would normally break that; force the struct to be packed.
                force_packed = any(f.type.size == 8 and f.type.is_simple for f in self.fields[(idx+1):])
                break

    if self.name == name:
        zig_type_setup(self, name, ('Event',))
    else:
        # no type-setup needed for eventcopies
        # (the type-setup of an eventcopy would overwrite members of the original
        # event, and it would create sizeof-etc funtions which
        # called undefined accessor functions)
        pass

    zig_opcode(name, self.opcodes[name])

    if self.name == name:
        zig_complex(self, force_packed)
    else:
        zig('pub const %s = %s;', name[-1] + 'Event', _t(self.name) + 'Event')

def zig_error(self, name):
    if self.name == name:
        zig_type_setup(self, name, ('Error',))

        for key, value in self.opcodes.items():
            zig_opcode(key, value)

        zig_complex(self)


output = {'open'    : zig_open,
          'close'   : zig_close,
          'simple'  : zig_simple,
          'enum'    : zig_enum,
          'struct'  : zig_struct,
          'union'   : zig_union,
          'request' : zig_request,
          'eventstruct' : zig_eventstruct,
          'event'   : zig_event,
          'error'   : zig_error,
          }

try:
    opts, args = getopt.getopt(sys.argv[1:], 'p:', [])
except getopt.GetoptError as err:
    print(err)
    print('Usage: zig_client.py [-p path] file.xml')
    sys.exit(1)

try:
    from xcbgen.state import Module
    from xcbgen.xtypes import *
except ImportError:
    print('''
Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.
''')
    raise

# Parse the xml header
module = Module(args[0], output)

# Build type-registry and resolve type dependencies
module.register()
module.resolve()

# Output the code
module.generate()
