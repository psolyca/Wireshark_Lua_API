--- @meta

--- Wireshark 3.6.1
--- 11.5. Obtaining Packet Information
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Pinfo.html

--- PrivateTable represents the pinfo→private_table.
--- @class PrivateTable
PrivateTable = {}

--- @type PrivateTable
local privatetable = {}

--- Gets debugging type information about the private table.
--- @return string @A string with all keys in the table, mostly for debugging.
function privatetable:__tostring() end