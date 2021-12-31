--- @meta

--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- A FrameInfo object, passed into Lua as an argument by FileHandler callback functions (e.g., read, seek_read, etc.).
--- This object represents frame data and meta-data (data about the frame/packet) for a given read/seek_read/`write’s frame.
--- This object’s fields are written-to/set when used by read function callbacks, and read-from/get when used by file write function callbacks. In other words, when the Lua plugin’s FileHandler read/seek_read/etc. functions are invoked, a FrameInfo object will be passed in as one of the arguments, and its fields should be written-to/set based on the frame information read from the file; whereas when the Lua plugin’s FileHandler.write() function is invoked, the FrameInfo object passed in should have its fields read-from/get, to write that frame information to the file.
--- @class FrameInfo
--- @field comment string[] Table of comments in this frame.
--- @field time NSTime The packet timestamp as an NSTime object.
--- Note: Set the FileHandler.time_precision to the appropriate wtap_file_tsprec value as well.
--- @field data string The data buffer containing the packet.
--- @field rec_type wtap_rec_types The record type of the packet frame
--- @field flags wtap_presence_flags The presence flags of the packet frame.
--- @field captured_length number The captured packet length, and thus the length of the buffer passed to the FrameInfo.data field.
--- @field original_length number The on-the-wire packet length, which may be longer than the captured_length.
--- @field encap wtap_encaps The packet encapsulation type for the frame/packet, if the file supports per-packet types.
FrameInfo = {}

--- @type FrameInfo
local frameinfo = {}

--- Generates a string of debug info for the FrameInfo
--- @return string @String of debug information.
function frameinfo:__tostring() end

--- Tells Wireshark to read directly from given file into frame data buffer, for length bytes. Returns true if succeeded, else false.
--- @param file File The File object userdata, provided by Wireshark previously in a reading-based callback.
--- @param length number The number of bytes to read from the file at the current cursor position.
--- @return boolean @True if succeeded, else returns false along with the error number and string error description.
--- A Lua string of the frame buffer’s data.
function frameinfo:read_data(file, length) end