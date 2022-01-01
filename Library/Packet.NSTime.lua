--- @meta

--- Wireshark 3.6.1
--- 11.5. Obtaining Packet Information
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Pinfo.html

--- NSTime represents a nstime_t. This is an object with seconds and nanoseconds.
--- @class NSTime
--- @field public secs number The NSTime seconds.
--- @field public nsecs number The NSTime nano seconds.
NSTime = {}

--- Creates a new NSTime object.
--- @return NSTime @The new NSTime object.
function NSTime.new(seconds, nseconds) end

--- @class NSTime
local nstime = {}

--- Creates a NSTime object.
--- @param seconds? number  Seconds.
--- @param nseconds? number  Nanoseconds.
--- @return NSTime @The new NSTime object.
function nstime:__call(seconds, nseconds) end

--- Return a Lua number of the NSTime representing seconds from epoch
--- @return number @The Lua number.
function nstime:tonumber() end

--- @return string @The string representing the nstime.
function nstime:__tostring() end

--- Calculates the sum of two NSTimes.
function nstime:__add() end

--- Calculates the diff of two NSTimes.
function nstime:__sub() end

--- Calculates the negative NSTime.
function nstime:__unm() end

--- Compares two NSTimes.
function nstime:__eq() end

--- Compares two NSTimes.
function nstime:__le() end

--- Compares two NSTimes.
function nstime:__lt() end