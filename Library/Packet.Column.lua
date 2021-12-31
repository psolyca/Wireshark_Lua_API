--- @meta

--- Wireshark 3.6.1
--- 11.5. Obtaining Packet Information
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Pinfo.html

--- A Column in the packet list.
--- @class Column
Column = {}

--- @type Column
local column = {}

--- @return string The column’s string text (in parenthesis if not available).
function column:__tostring() end

--- Clears a Column.
function column:clear() end

--- Sets the text of a Column.
--- @param text string The text to which to set the Column.
function column:set(text) end

--- Appends text to a Column.
--- @param text string The text to append to the Column.
function column:append(text) end

--- Prepends text to a Column.
--- @param text string The text to prepend to the Column.
function column:prepend(text) end

--- Sets Column text fence, to prevent overwriting.
function column:fence() end

--- Clear Column text fence.
function column:clear_fence() end