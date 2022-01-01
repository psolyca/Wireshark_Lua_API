--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- A refererence to a dissector, used to call a dissector against a packet or a part of it.
--- @class Dissector
Dissector = {}

--- Obtains a dissector reference by name.
--- @param name string name of dissector
--- @return Dissector @The Dissector reference if found, otherwise nil
function Dissector.get(name) end

--- Gets a Lua array table of all registered Dissector names.
--- @return string[] The array table of registered dissector names.
function Dissector.list() end

--- @class Dissector
local dissector = {}

--- Calls a dissector against a given packet (or part of it).
---@param tvb Tvb The buffer to dissect
---@param pinfo Pinfo The packet info
---@param tree TreeItem The tree on which to add the protocol items.
---@return number Number of bytes dissected. Note that some dissectors always return number of bytes in incoming buffer, so be aware.
function dissector:call(tvb, pinfo, tree) end

--- Calls a dissector against a given packet (or part of it).
---@param tvb Tvb The buffer to dissect
---@param pinfo Pinfo The packet info
---@param tree TreeItem The tree on which to add the protocol items.
function dissector:__call(tvb, pinfo, tree) end

---Gets the Dissector’s protocol short name.
---@return string @A string of the protocol’s short name.
function dissector:__tostring() end