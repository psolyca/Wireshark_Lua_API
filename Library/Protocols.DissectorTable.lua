--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- A table of subdissectors of a particular protocol
--- @class DissectorTable
DissectorTable = {}

---Creates a new DissectorTable for your dissector’s use.
--- @param tablename string The short name of the table. Use lower-case alphanumeric, dot, and/or underscores (e.g., "ansi_map.tele_id" or "udp.port").
--- @param uiname string optional: The name of the table in the user interface. Defaults to the name given in tablename, but can be any string.
--- @param type number One of ftypes.UINT8, ftypes.UINT16, ftypes.UINT24, ftypes.UINT32, or ftypes.STRING. Defaults to ftypes.UINT32
--- @param base number One of base.NONE, base.DEC, base.HEX, base.OCT, base.DEC_HEX or base.HEX_DEC. Defaults to base.DEC.
--- @param proto Proto The Proto object that uses this dissector table.
--- @return DissectorTable @The newly created DissectorTable.
function DissectorTable.new(tablename, uiname, type, base, proto) end

--- Gets a Lua array table of all DissectorTable names - i.e., the string names you can use for the first argument to DissectorTable.get()
--- @return string[] @The array table of registered DissectorTable names
function DissectorTable.list() end

--- Gets a Lua array table of all heuristic list names - i.e., the string names you can use for the first argument in Proto:register_heuristic()
--- @return string[] @The array table of registered heuristic list names
function DissectorTable.heuristic_list() end

---Try all the dissectors in a given heuristic dissector table
---@param listname string The name of the heuristic dissector.
---@param tvb Tvb The buffer to dissect
---@param pinfo Pinfo The packet info
---@param tree TreeItem The tree on which to add the protocol items
function DissectorTable.try_heuristics(listname, tvb, pinfo, tree) end

--- Obtain a reference to an existing dissector table.
--- @param tablename string The short name of the table
--- @return DissectorTable @The DissectorTable reference if found, otherwise nil.
function DissectorTable.get(tablename) end

--- @class DissectorTable
local dissectortable = {}

--- Add a Proto with a dissector function or a Dissector object to the dissector table.
--- @param pattern number|string The pattern to match (either an integer, a integer range or a string depending on the table’s type)
--- @param dissector Proto|Dissector The dissector to add (either a Proto or a Dissector)
function dissectortable:add(pattern, dissector) end

--- Clear all existing dissectors from a table and add a new dissector or a range of new dissectors.
--- @param pattern number|string The pattern to match (either an integer, a integer range or a string depending on the table’s type)
--- @param dissector Proto|Dissector The dissector to add (either a Proto or a Dissector)

function dissectortable:set(pattern, dissector) end

--- Remove a dissector or a range of dissectors from a table.
--- @param pattern number|string The pattern to match (either an integer, a integer range or a string depending on the table’s type)
--- @param dissector Proto|Dissector The dissector to remove (either a Proto or a Dissector).
function dissectortable:remove(pattern, dissector) end

---Remove all dissectors from a table.
function dissectortable:remove_all() end

--- Try to call a dissector from a table.
--- @param pattern string|number The pattern to be matched (either an integer or a string depending on the table’s type)
--- @param tvb Tvb The Tvb to dissect
--- @param pinfo Pinfo The packet info
--- @param tree TreeItem The tree on which to add the protocol items
--- @return number Number of bytes dissected. Note that some dissectors always return number of bytes in incoming buffer, so be aware
function dissectortable:try(pattern, tvb, pinfo, tree) end

--- Try to obtain a dissector from a table
--- @param pattern number|string The pattern to match (either an integer, a integer range or a string depending on the table’s type)
--- @return Dissector  The Dissector handle if found, otherwise nil
function dissectortable:get_dissector(pattern) end

--- Add the given Proto to the “Decode as…​” list for this DissectorTable. The passed-in Proto object’s dissector() function is used for dissecting.
--- @param proto Proto The Proto to add.
function dissectortable:add_for_decode_as(proto) end

---Gets some debug information about the DissectorTable.
---@return string A string of debug information about the DissectorTable.
function dissectortable:__tostring() end