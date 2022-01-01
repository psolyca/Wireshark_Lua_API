--- @meta
--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- A CaptureInfoConst object, passed into Lua as an argument to the FileHandler callback function write_open().
--- This object represents capture file data and meta-data (data about the capture file) for the current capture in Wireshark/TShark.
--- This object’s fields are read-from when used by write_open function callback. In other words, when the Lua plugin’s FileHandler write_open function is invoked, a CaptureInfoConst object will be passed in as one of the arguments, and its fields should be read from by your Lua code to get data about the capture that needs to be written.
--- @class CaptureInfoConst
--- @field captureinfoconst.type number The file type.
--- @field captureinfoconst.snapshot_length number The maximum packet length that is actually recorded (vs. the original length of any given packet on-the-wire). A value of 0 means the snapshot length is unknown or there is no one such length for the whole file.
--- @field captureinfoconst.encap wtap_encaps The packet encapsulation type for the whole file.
--- It is set to wtap_encaps.PER_PACKET if packets can have different types, in which case each Frame identifies its type, in FrameInfo.packet_encap.
--- @field captureinfoconst.comment string A comment for the whole capture file, if the wtap_presence_flags.COMMENTS was set in the presence flags; nil if there is no comment.
--- @field captureinfoconst.hardware string A string containing the description of the hardware used to create the capture, or nil if there is no hardware string.
--- @field captureinfoconst.os string A string containing the name of the operating system used to create the capture, or nil if there is no os string.
--- @field captureinfoconst.user_app string A string containing the name of the application used to create the capture, or nil if there is no user_app string.
--- @field captureinfoconst.hosts table A ip-to-hostname Lua table of two key-ed names: ipv4_addresses and ipv6_addresses. The value of each of these names are themselves array tables, of key-ed tables, such that the inner table has a key addr set to the raw 4-byte or 16-byte IP address Lua string and a name set to the resolved name.
--- @field captureinfoconst.private_table table A private Lua value unique to this file.
--- The private_table is a field you set/get with your own Lua table. This is provided so that a Lua script can save per-file reading/writing state, because multiple files can be opened and read at the same time.
CaptureInfoConst = {}

--- @class CaptureInfoConst
local captureinfoconst = {}

--- Generates a string of debug info for the CaptureInfoConst
--- @return string @String of debug information.
function captureinfoconst:__tostring() end