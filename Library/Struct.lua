--- @meta

--- Wireshark 3.6.1
--- 11.14. Binary Encode/Decode Support
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Struct.html

--- The Struct class offers basic facilities to convert Lua values to and from C-style structs in binary Lua strings. This is based on Roberto Ierusalimschy’s Lua struct library found in http://www.inf.puc-rio.br/~roberto/struct/, with some minor modifications as follows:
--- Added support for Int64/UInt64 being packed/unpacked, using 'e'/'E'.
--- Can handle 'long long' integers (i8 / I8); though they’re converted to doubles.
--- Can insert/specify padding anywhere in a struct. ('X' eg. when a string is following a union).
--- Can report current offset in both pack and unpack (“=”).
--- Can mask out return values when you only want to calculate sizes or unmarshal pascal-style strings using “(” & “)”.
--- All but the first of those changes are based on an email from Flemming Madsen, on the lua-users mailing list, which can be found here.
--- The main functions are Struct.pack, which packs multiple Lua values into a struct-like Lua binary string; and Struct.unpack, which unpacks multiple Lua values from a given struct-like Lua binary string. There are some additional helper functions available as well.
--- All functions in the Struct library are called as static member functions, not object methods, so they are invoked as "Struct.pack(…​)" instead of "object:pack(…​)".
--- The fist argument to several of the Struct functions is a format string, which describes the layout of the structure. The format string is a sequence of conversion elements, which respect the current endianness and the current alignment requirements. Initially, the current endianness is the machine’s native endianness and the current alignment requirement is 1 (meaning no alignment at all). You can change these settings with appropriate directives in the format string.
--- The supported elements in the format string are as follows:

--- ` ' (empty space) ignored.
--- `!n' flag to set the current alignment requirement to 'n' (necessarily a power of 2); an absent 'n' means the machine’s native alignment.
--- `>' flag to set mode to big endian (i.e., network-order).
--- `<' flag to set mode to little endian.
--- `x' a padding zero byte with no corresponding Lua value.
--- `b' a signed char.
--- `B' an unsigned char.
--- `h' a signed short (native size).
--- `H' an unsigned short (native size).
--- `l' a signed long (native size).
--- `L' an unsigned long (native size).
--- `T' a size_t (native size).
--- `in' a signed integer with 'n' bytes. An absent 'n' means the native size of an int.
--- `In' like `in' but unsigned.
--- `e' signed 8-byte Integer (64-bits, long long), to/from a Int64 object.
--- `E' unsigned 8-byte Integer (64-bits, long long), to/from a UInt64 object.
--- `f' a float (native size).
--- `d' a double (native size).
--- `s' a zero-terminated string.
--- `cn' a sequence of exactly 'n' chars corresponding to a single Lua string. An absent 'n' means 1. When packing, the given string must have at least 'n' characters (extra characters are discarded).
--- `c0' this is like `cn', except that the 'n' is given by other means: When packing, 'n' is the length of the given string; when unpacking, 'n' is the value of the previous unpacked value (which must be a number). In that case, this previous value is not returned.
--- `xn' pad to 'n' number of bytes, default 1.
--- `Xn' pad to 'n' alignment, default MAXALIGN.
--- `(' to stop assigning items, and `)' start assigning (padding when packing).
--- `=' to return the current position / offset.

--- Using i, I, h, H, l, L, f, and T is strongly discouraged, as those sizes are system-dependent. Use the explicitly sized variants instead, such as i4 or E.
--- Unpacking of i/I is done to a Lua number, a double-precision floating point, so unpacking a 64-bit field (i8/I8) will lose precision. Use e/E to unpack into a Wireshark Int64/UInt64 object instead.

--- @class Struct
Struct = {}

--- Returns a string containing the values arg1, arg2, etc. packed/encoded according to the format string.
--- @param format string The format string
--- @param value number|string One or more Lua value(s) to encode, based on the given format.
--- @return string @The packed binary Lua string, plus any positions due to '=' being used in format.
function Struct.pack(format, value) end

--- Unpacks/decodes multiple Lua values from a given struct-like binary Lua string. The number of returned values depends on the format given, plus an additional value of the position where it stopped reading is returned.
--- @param format string The format string
--- @param struct string The binary Lua string to unpack
--- @param begin? number  The position to begin reading from (default=1)
--- @return number|string @One or more values based on format, plus the position it stopped unpacking.
function Struct.unpack(format, struct, begin) end

--- Returns the length of a binary string that would be consumed/handled by the given format string.
--- @param format string The format string
--- @return number @The size number
function Struct.size(format) end

--- Returns the number of Lua values contained in the given format string. This will be the number of returned values from a call to Struct.unpack() not including the extra return value of offset position. (i.e., Struct.values() does not count that extra return value) This will also be the number of arguments Struct.pack() expects, not including the format string argument.
--- @param format string The format string
--- @return number @The number of values
function Struct.values(format) end

--- Converts the passed-in binary string to a hex-ascii string.
--- @param bytestring string A Lua string consisting of binary bytes
--- @param lowercase? boolean  True to use lower-case hex characters (default=false).
--- @param separator? string  A string separator to insert between hex bytes (default=nil).
--- @return string @The Lua hex-ascii string
function Struct.tohex(bytestring, lowercase, separator) end

--- Converts the passed-in hex-ascii string to a binary string.
--- @param hexbytes string A string consisting of hexadecimal bytes like "00 B1 A2" or "1a2b3c4d"
--- @param separator? string  A string separator between hex bytes/words (default none).
--- @return string @The Lua binary string
function Struct.fromhex(hexbytes, separator) end