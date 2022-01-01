--- @meta

--- Wireshark 3.6.1
--- 11.2. Obtaining Dissection Data
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Field.html

--- An extracted Field from dissected packet data. A FieldInfo object can only be used within the callback functions of dissectors, post-dissectors, heuristic-dissectors, and taps.
--- A FieldInfo can be called on either existing Wireshark fields by using either Field.new() or Field() before-hand, or it can be called on new fields created by Lua from a ProtoField.
--- @class FieldInfo
--- @field public len number The length of this field.
--- @field public offset number The offset of this field.
--- @field public value number The value of this field.
--- @field public label string The string representing this field.
--- @field public display string The string display of this field as seen in GUI.
--- @field public type ftypes The internal field type, a number which matches one of the ftype values in init.lua.
--- @field public source Tvb The source Tvb object the FieldInfo is derived from, or nil if there is none.
--- @field public range TvbRange The TvbRange covering the bytes of this field in a Tvb or nil if there is none.
--- @field public generated boolean Whether this field was marked as generated (boolean).
--- @field public hidden boolean Whether this field was marked as hidden (boolean).
--- @field public is_url boolean Whether this field was marked as being a URL (boolean).
--- @field public little_endian boolean Whether this field is little-endian encoded (boolean).
--- @field public big_endian boolean Whether this field is big-endian encoded (boolean).
--- @field public name string The filter name of this field.
FieldInfo = {}

--- @class FieldInfo
local fieldinfo = {}

--- Obtain the Length of the field
--- @return number
function fieldinfo:__len() end

--- Obtain the Offset of the field
--- @return number
function fieldinfo:__unm() end

--- Obtain the Value of the field.
--- @return ByteArray
function fieldinfo:__call() end

--- The string representation of the field.
--- @return string
function fieldinfo:__tostring() end

--- Checks whether lhs is within rhs.
--- @return boolean
function  fieldinfo:__eq() end

--- Checks whether the end byte of lhs is before the end of rhs.
--- @return boolean
function  fieldinfo:__le() end

--- Checks whether the end byte of rhs is before the beginning of rhs.
--- @return boolean
function  fieldinfo:__lt() end