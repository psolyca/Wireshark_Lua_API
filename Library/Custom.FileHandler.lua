--- @meta

--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- A FileHandler object, created by a call to FileHandler.new(arg1, arg2, …​). The FileHandler object lets you create a file-format reader, or writer, or both, by setting your own read_open/read or write_open/write functions.
--- @class FileHandler
--- @field read_open function The Lua function to be called when Wireshark opens a file for reading.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfo object
--- The purpose of the Lua function set to this read_open field is to check if the file Wireshark is opening is of its type, for example by checking for magic numbers or trying to parse records in the file, etc. The more can be verified the better, because Wireshark tries all file readers until it finds one that accepts the file, so accepting an incorrect file prevents other file readers from reading their files.
--- The called Lua function should return true if the file is its type (it accepts it), false if not. The Lua function must also set the File offset position (using file:seek()) to where it wants it to be for its first read() call.
--- @field read function The Lua function to be called when Wireshark wants to read a packet from the file.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfo object
    --- A FrameInfo object
--- The purpose of the Lua function set to this read field is to read the next packet from the file, and setting the parsed/read packet into the frame buffer using FrameInfo.data = foo or FrameInfo:read_data(file, frame.captured_length).
--- The called Lua function should return the file offset/position number where the packet begins, or false if it hit an error. The file offset will be saved by Wireshark and passed into the set seek_read() Lua function later.
--- @field seek_read function The Lua function to be called when Wireshark wants to read a packet from the file at the given offset.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfo object
    --- A FrameInfo object
--- The file offset number previously set by the read() function call
--- The called Lua function should return true if the read was successful, or false if it hit an error. Since 2.4.0, a number is also acceptable to signal success, this allows for reuse of FileHandler:read:
--- @field read_close function The Lua function to be called when Wireshark wants to close the read file completely.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfo object
--- It is not necessary to set this field to a Lua function - FileHandler can be registered without doing so - it is available in case there is memory/state to clear in your script when the file is closed.
--- @field seq_read_close function The Lua function to be called when Wireshark wants to close the sequentially-read file.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfo object
--- It is not necessary to set this field to a Lua function - FileHandler can be registered without doing so - it is available in case there is memory/state to clear in your script when the file is closed for the sequential reading portion. After this point, there will be no more calls to read(), only seek_read().
--- @field can_write_encap function The Lua function to be called when Wireshark wants to write a file, by checking if this file writer can handle the wtap packet encapsulation(s).
--- When later called by Wireshark, the Lua function will be given a Lua number, which matches one of the encapsulations in the Lua wtap_encaps table. This might be the wtap_encap.PER_PACKET number, meaning the capture contains multiple encapsulation types, and the file reader should only return true if it can handle multiple encap types in one file. The function will then be called again, once for each encap type in the file, to make sure it can write each one.
--- If the Lua file writer can write the given type of encapsulation into a file, then it returns the boolean true, else false.
--- @field write_open function The Lua function to be called when Wireshark opens a file for writing.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfoConst object
--- The purpose of the Lua function set to this write_open field is similar to the read_open callback function: to initialize things necessary for writing the capture to a file. For example, if the output file format has a file header, then the file header should be written within this write_open function.
--- The called Lua function should return true on success, or false if it hit an error.
--- Also make sure to set the FileHandler.write (and potentially FileHandler.write_finish) functions before returning true from this function.
--- @field write function The Lua function to be called when Wireshark wants to write a packet to the file.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfoConst object
    --- A FrameInfoConst object of the current frame/packet to be written
--- The purpose of the Lua function set to this write field is to write the next packet to the file.
--- The called Lua function should return true on success, or false if it hit an error.
--- @field write_finish function The Lua function to be called when Wireshark wants to close the written file.
--- When later called by Wireshark, the Lua function will be given:
    --- A File object
    --- A CaptureInfoConst object
--- It is not necessary to set this field to a Lua function - FileHandler can be registered without doing so - it is available in case there is memory/state to clear in your script when the file is closed.
--- @field type number The internal file type. This is automatically set with a new number when the FileHandler is registered.
--- @field extensions string One or more semicolon-separated file extensions that this file type usually uses.
--- For readers using heuristics to determine file type, Wireshark will try the readers of the file’s extension first, before trying other readers. But ultimately Wireshark tries all file readers for any file extension, until it finds one that accepts the file.
--- (Since 2.6) For writers, the first extension is used to suggest the default file extension.
--- @field writing_must_seek boolean True if the ability to seek is required when writing this file format, else false.
--- This will be checked by Wireshark when writing out to compressed file formats, because seeking is not possible with compressed files. Usually a file writer only needs to be able to seek if it needs to go back in the file to change something, such as a block or file length value earlier in the file.
--- @field writes_name_resolution boolean True if the file format supports name resolution records, else false.
--- @field supported_comment_types wtap_comments Set to the bit-wise OR’ed number representing the type of comments the file writer supports writing, based on the numbers in the wtap_comments table.
FileHandler = {}

--- Creates a new FileHandler
--- @param description string A description of the file type, for display purposes only. E.g., "Wireshark - pcapng"
--- @param name string The file type name, used to look up the file type in various places. E.g., "pcapng". Note: The name cannot already be in use.
--- @param internal_description string Descriptive text about this file format, for internal display purposes only
--- @param type string The type of FileHandler, "r"/"w"/"rw" for reader/writer/both, include "m" for magic, "s" for strong heuristic@return The newly created FileHandler object
function FileHandler.new(description, name, internal_description, type) end

--- @class FileHandler
local filehandler = {}

--- Generates a string of debug info for the FileHandler
--- @return string @String of debug information.
function filehandler:__tostring() end