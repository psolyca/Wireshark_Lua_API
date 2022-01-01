--- @meta

--- Wireshark 3.6.1
--- 11.1. Saving Capture Files
--- https://www.wireshark.org/docs/wsdg_html_chunked/wsluarm_modules.html#lua_module_Dumper

--- @class Dumper
Dumper = {}

--- Creates a file to write packets. Dumper:new_for_current() will probably be a better choice.
--- @param filename string The name of the capture file to be created.
--- @param filetype? number  The type of the file to be created - a number returned by wtap_name_to_file_type_subtype(). (The wtap_filetypes table in init.lua is deprecated, and should only be used in code that must run on Wireshark 3.4.3 and earlier 3.4 releases or in Wireshark 3.2.11 and earlier 3.2.x releases.)
--- @param encap? number  The encapsulation to be used in the file to be created - a number entry from the wtap_encaps table in init.lua.
--- @return Dumper @The newly created Dumper object
function Dumper.new(filename, filetype, encap) end

--- @class Dumper
local dumper = {}

--- Closes a dumper.
function dumper:close() end

--- Writes all unsaved data of a dumper to the disk.
function dumper:flush() end

--- Dumps an arbitrary packet.
--- Note: Dumper:dump_current() will fit best in most cases.
--- @param timestamp string The absolute timestamp the packet will have.
--- @param pseudoheader PseudoHeader The PseudoHeader to use.
--- @param bytearray ByteArray The data to be saved
function dumper:dump(timestamp, pseudoheader, bytearray) end

--- Creates a capture file using the same encapsulation as the one of the current packet.
--- @param filetype? number  The file type. Defaults to pcap.
--- @return Dumper @The newly created Dumper Object
function dumper:new_for_current(filetype) end

--- Dumps the current packet as it is.
function dumper:dump_current() end
