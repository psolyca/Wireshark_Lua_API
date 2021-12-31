--- @meta

--- Wireshark 3.6.1
--- 11.13. Handling 64-bit Integers
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Int64.html

--- UInt64 represents a 64 bit unsigned integer, similar to Int64.
--- @class UInt64
UInt64 = {}

--- Decodes an 8-byte Lua binary string, using given endianness, into a new UInt64 object.
--- @param string string The Lua string containing a binary 64-bit integer.
--- @param endian? boolean  If set to true then little-endian is used, if false then big-endian; if missing or nil, native host endian.
--- @return UInt64 @The UInt64 object created, or nil on failure.
function UInt64.decode(string, endian) end

--- Creates a UInt64 Object.
--- @param value? number  A number, UInt64, Int64, or string of digits to assign the value of the new UInt64. Default is 0.
--- @param highvalue? number  If this is a number and the first argument was a number, then the first will be treated as a lower 32 bits, and this is the high-order 32-bit number.
--- @return UInt64 @The new UInt64 object.
function UInt64.new(value, highvalue) end

--- Creates a UInt64 of the maximum possible value. In other words, this should return an UInt64 object of the number 18,446,744,073,709,551,615.
--- @return UInt64 @The maximum value.
function UInt64.max() end

--- Creates a UInt64 of the minimum possible value. In other words, this should return an UInt64 object of the number 0.
--- @return UInt64 @The minimum value.
function UInt64.min() end

--- Creates a UInt64 object from the given hex string.
--- @param hex string The hex-ASCII Lua string.
--- @return UInt64 @The new UInt64 object.
function UInt64.fromhex(hex) end

--- @type UInt64
uint64 = {}

--- Encodes the UInt64 number into an 8-byte Lua binary string, using given endianness.
--- @param endian? boolean  If set to true then little-endian is used, if false then big-endian; if missing or nil, native host endian.
--- @return string @The Lua binary string.
function uint64:encode(endian) end

--- Creates a UInt64 object.
--- @return UInt64 @The new UInt64 object.
function uint64:__call() end

--- Returns a Lua number of the UInt64 value. This may lose precision.
--- @return number @The Lua number.
function uint64:tonumber() end

--- Converts the UInt64 into a string.
--- @return string @The Lua string.
function uint64:__tostring() end

--- Returns a hex string of the UInt64 value.
--- @param numbytes? number  The number of hex-chars/nibbles to generate. Negative means uppercase Default is 16.
--- @return string @The string hex.
function uint64:tohex(numbytes) end

--- Returns a Lua number of the higher 32 bits of the UInt64 value.
--- @return number @The Lua number.
function uint64:higher() end

--- Returns a Lua number of the lower 32 bits of the UInt64 value.
--- @return number @The Lua number.
function uint64:lower() end

--- Returns the UInt64 in a new UInt64, since unsigned integers can’t be negated.
--- @return UInt64 @The UInt64 object.
function uint64:__unm() end

--- Adds two UInt64 together and returns a new one. This may wrap the value.
--- @return UInt64 @The UInt64 object.
function uint64:__add() end

--- Subtracts two UInt64 and returns a new one. This may wrap the value.
--- @return UInt64 @The UInt64 object.
function uint64:__sub() end

--- Multiplies two UInt64 and returns a new one. This may truncate the value.
--- @return UInt64 @The UInt64 object.
function uint64:__mul() end

--- Divides two UInt64 and returns a new one. Integer divide, no remainder. Trying to divide by zero results in a Lua error.
--- @return UInt64 @The UInt64 result.
function uint64:__div() end

--- Divides two UInt64 and returns a new one of the remainder. Trying to modulo by zero results in a Lua error.
--- @return UInt64 @The UInt64 result.
function uint64:__mod() end

--- The first UInt64 is taken to the power of the second UInt64/number, returning a new one. This may truncate the value.
--- @return UInt64 @The UInt64 object.
function uint64:__pow() end

--- Returns true if both UInt64 are equal.
--- @return boolean
function uint64:__eq() end

--- Returns true if first UInt64 is less than the second.
--- @return boolean
function uint64:__lt() end

--- Returns true if first UInt64 is less than or equal to the second.
--- @return boolean
function uint64:__le() end

--- Returns a UInt64 of the bitwise 'not' operation.
--- @return UInt64 @The UInt64 object.
function uint64:bnot() end

--- Returns a UInt64 of the bitwise 'and' operation, with the given number/Int64/UInt64. Note that multiple arguments are allowed.
--- @return UInt64 @The UInt64 object.
function uint64:band() end

--- Returns a UInt64 of the bitwise 'or' operation, with the given number/Int64/UInt64. Note that multiple arguments are allowed.
--- @return UInt64 @The UInt64 object.
function uint64:bor() end

--- Returns a UInt64 of the bitwise 'xor' operation, with the given number/Int64/UInt64. Note that multiple arguments are allowed.
--- @return UInt64 @The UInt64 object.
function uint64:bxor() end

--- Returns a UInt64 of the bitwise logical left-shift operation, by the given number of bits.
--- @param numbits number The number of bits to left-shift by.
--- @return UInt64 @The UInt64 object.
function uint64:lshift(numbits) end

--- Returns a UInt64 of the bitwise logical right-shift operation, by the given number of bits.
--- @param numbits number The number of bits to right-shift by.
--- @return UInt64 @The UInt64 object.
function uint64:rshift(numbits) end

--- Returns a UInt64 of the bitwise arithmetic right-shift operation, by the given number of bits.
--- @param numbits number The number of bits to right-shift by.
--- @return UInt64 @The UInt64 object.
function uint64:arshift(numbits) end

--- Returns a UInt64 of the bitwise left rotation operation, by the given number of bits (up to 63).
--- @param numbits number The number of bits to roll left by.
--- @return UInt64 @The UInt64 object.
function uint64:rol(numbits) end

--- Returns a UInt64 of the bitwise right rotation operation, by the given number of bits (up to 63).
--- @param numbits number The number of bits to roll right by.
--- @return UInt64 @The UInt64 object.
function uint64:ror(numbits) end

--- Returns a UInt64 of the bytes swapped. This can be used to convert little-endian 64-bit numbers to big-endian 64 bit numbers or vice versa.
--- @return UInt64 @The UInt64 object.
function uint64:bswap() end