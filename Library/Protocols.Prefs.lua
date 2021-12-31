--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- The table of preferences of a protocol.
--- @class Prefs
Prefs = {}

--- @type Prefs
local prefs = {}

--- Creates a new preference.
--- @param name string The abbreviation of this preference.
--- @param pref Pref A valid but still unassigned Pref object.
function prefs:__newindex(name, pref) end

--- Get the value of a preference setting.
--- @param name string The abbreviation of this preference.
--- @return Pref @The current value of the preference.
function prefs:__index(name) end