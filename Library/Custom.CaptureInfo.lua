--- @meta
--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- A CaptureInfo object, passed into Lua as an argument by FileHandler callback function read_open(), read(), seek_read(), seq_read_close(), and read_close(). This object represents capture file data and meta-data (data about the capture file) being read into Wireshark/TShark.
--- This object’s fields can be written-to by Lua during the read-based function callbacks. In other words, when the Lua plugin’s FileHandler.read_open() function is invoked, a CaptureInfo object will be passed in as one of the arguments, and its fields should be written to by your Lua code to tell Wireshark about the capture.
--- @class CaptureInfo
--- @field captureinfo.encap wtap_encaps The packet encapsulation type for the whole file.
--- Set to wtap_encaps.PER_PACKET if packets can have different types, then later set FrameInfo.encap for each packet during read()/seek_read().
--- @field captureinfo.time_precision wtap_tsprecs The precision of the packet timestamps in the file.
--- @field captureinfo.snapshot_length number The maximum packet length that could be recorded. Setting it to 0 means unknown.
--- @field captureinfo.comment string A string comment for the whole capture file, or nil if there is no comment.
--- @field captureinfo.hardware string A string containing the description of the hardware used to create the capture, or nil if there is no hardware string.
--- @field captureinfo.os string A string containing the name of the operating system used to create the capture, or nil if there is no os string.
--- @field captureinfo.user_app string A string containing the name of the application used to create the capture, or nil if there is no user_app string.
--- @field captureinfo.hosts table Sets resolved ip-to-hostname information. The value set must be a Lua table of two key-ed names: ipv4_addresses and ipv6_addresses. The value of each of these names are themselves array tables, of key-ed tables, such that the inner table has a key addr set to the raw 4-byte or 16-byte IP address Lua string and a name set to the resolved name.
--- @field captureinfo.private_table table A private Lua value unique to this file. The private_table is a field you set/get with your own Lua table. This is provided so that a Lua script can save per-file reading/writing state, because multiple files can be opened and read at the same time.
CaptureInfo = {}

--- @class CaptureInfo
local captureinfo = {}

--- Generates a string of debug info for the CaptureInfo
--- @return string @String of debug information.
function captureinfo:__tostring() end