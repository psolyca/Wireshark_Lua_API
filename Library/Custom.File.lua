--- @meta
--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- A File object, passed into Lua as an argument by FileHandler callback functions (e.g., read_open, read, write, etc.). This behaves similarly to the Lua io library’s file object, returned when calling io.open(), except in this case you cannot call file:close(), file:open(), nor file:setvbuf(), since Wireshark/TShark manages the opening and closing of files. You also cannot use the “io” library itself on this object, i.e. you cannot do io.read(file, 4). Instead, use this File with the object-oriented style calling its methods, i.e. myfile:read(4). (see later example)
--- The purpose of this object is to hide the internal complexity of how Wireshark handles files, and instead provide a Lua interface that is familiar, by mimicking the io library. The reason true/raw io files cannot be used is because Wireshark does many things under the hood, such as compress the file, or write to stdout, or various other things based on configuration/commands.
--- When a File object is passed in through reading-based callback functions, such as read_open(), read(), and read_close(), then the File object’s write() and flush() functions are not usable and will raise an error if used.
--- When a File object is passed in through writing-based callback functions, such as write_open(), write(), and write_close(), then the File object’s read() and lines() functions are not usable and will raise an error if used.
--- Note: A File object should never be stored/saved beyond the scope of the callback function it is passed in to.
--- @class File
--- @field file.compressed wtap_encaps Whether the File is compressed or not.
--- Set to wtap_encaps.PER_PACKET if packets can have different types, then later set FrameInfo.encap for each packet during read()/seek_read().
File = {}

--- @type File
local file = {}

--- Reads from the File, similar to Lua’s file:read(). See Lua 5.x ref manual for file:read().
function file:read() end

--- Seeks in the File, similar to Lua’s file:seek(). See Lua 5.x ref manual for file:seek().
--- @return number @The current file cursor position as a number.
function file:seek() end

--- Lua iterator function for retrieving ASCII File lines, similar to Lua’s file:lines(). See Lua 5.x ref manual for file:lines().
function file:lines() end

--- Writes to the File, similar to Lua’s file:write(). See Lua 5.x ref manual for file:write().
function file:write() end

--- Generates a string of debug info for the File object
--- @return string @String of debug information.
function file:__tostring() end