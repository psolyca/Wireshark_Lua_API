--- @meta
--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- A constant FrameInfo object, passed into Lua as an argument by the FileHandler write callback function. This has similar attributes/properties as FrameInfo, but the fields can only be read from, not written to.
--- @class FrameInfoConst
--- @field frameinfoconst.comment string The first string comment for the packet, if any; nil if there is no comment.
--- @field frameinfoconst.time NSTime The packet timestamp as an NSTime object.
--- @field frameinfoconst.data string The data buffer containing the packet.
--- @field frameinfoconst.rec_type wtap_presence_flags The record type of the packet frame.
--- @field frameinfoconst.flags wtap_presence_flags The presence flags of the packet frame.
--- @field frameinfoconst.captured_length number The captured packet length, and thus the length of the buffer in the FrameInfoConst.data field.
--- @field frameinfoconst.original_length number The on-the-wire packet length, which may be longer than the captured_length.
--- @field frameinfoconst.encap wtap_encaps The packet encapsulation type, if the file supports per-packet types.
FrameInfoConst = {}

--- @class FrameInfoConst
local frameinfoconst = {}

--- Generates a string of debug info for the FrameInfo
--- @return string @String of debug information.
function frameinfoconst:__tostring() end

--- Tells Wireshark to write directly to given file from the frame data buffer, for length bytes. Returns true if succeeded, else false.
--- @param file File The File object userdata, provided by Wireshark previously in a writing-based callback.
--- @param length? number  The number of bytes to write to the file at the current cursor position, or all if not supplied.@return True if succeeded, else returns false along with the error number and string error description.
function frameinfoconst:write_data(file, length) end