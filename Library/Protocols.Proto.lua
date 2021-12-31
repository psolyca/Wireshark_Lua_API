--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- A new protocol in Wireshark. Protocols have several uses. The main one is to dissect a protocol, but they can also be dummies used to register preferences for other purposes
--- @class Proto
--- @field public dissector function The protocol’s dissector, a function you define.
--- When later called, the function will be given:
---     A Tvb object
---     A Pinfo object
---     A TreeItem object
--- @field public prefs Prefs The preferences of this dissector.
--- @field public prefs_changed function The preferences changed routine of this dissector, a Lua function you define.
--- @field public init function The init routine of this dissector, a function you define. The called init function is passed no arguments.
--- @field public name string The name given to this dissector.
--- @field public description string The description given to this dissector.
--- @field public fields ProtoField The `ProtoField`s Lua table of this dissector.
--- @field public experts ProtoExpert The expert info Lua table of this Proto.
Proto = {}

--- @param name string The name of the protocol.
--- @param desc string A Long Text description of the protocol (usually lowercase).
--- @return Proto The newly created Proto object.
function Proto.new(name, desc) end

--- @type Proto
local proto = {}

--- Creates a Proto object.
--- @param name string The name of the protocol.
--- @param desc string A Long Text description of the protocol (usually lowercase).
--- @return Proto The new Proto object.
function proto:__call(name, desc) end

--- Registers a heuristic dissector function for this Proto protocol, for the given heuristic list name.
--- When later called, the passed-in function will be given:
---     A Tvb object
---     A Pinfo object
---     A TreeItem object
--- The function must return true if the payload is for it, else false.
--- The function should perform as much verification as possible to ensure the payload is for it, and dissect the packet (including setting TreeItem info and such) only if the payload is for it, before returning true or false.
--- @param listname string The heuristic list name this function is a heuristic for (e.g., "udp" or "infiniband.payload").
--- @param func function A Lua function that will be invoked for heuristic dissection.
function proto:register_heuristic(listname, func) end