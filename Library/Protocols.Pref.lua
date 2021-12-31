--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- A preference of a Proto.
--- @class Pref
Pref = {}

--- Creates a boolean preference to be added to a Proto.prefs Lua table.
--- @param label string The Label (text in the right side of the preference input) for this preference.
--- @param default boolean The default value for this preference.
--- @param descr string A description of this preference.
function Pref.bool(label, default, descr) end

--- Creates an (unsigned) integer preference to be added to a Proto.prefs Lua table.
--- @param label string The Label (text in the right side of the preference input) for this preference.
--- @param default number The default value for this preference.
--- @param descr string A description of what this preference is.

function Pref.uint(label, default, descr) end
--- Creates a string preference to be added to a Proto.prefs Lua table.
--- @param label string The Label (text in the right side of the preference input) for this preference.
--- @param default string The default value for this preference.
--- @param descr string A description of what this preference is.
function Pref.string(label, default, descr) end

--- Creates an enum preference to be added to a Proto.prefs Lua table.
--- @param label string The Label (text in the right side of the preference input) for this preference.
--- @param default table The default value for this preference.
--- @param descr string A description of what this preference is.
--- @param enum table An enum Lua table.
--- @param radio boolean Radio button (true) or Combobox (false).
function Pref.enum(label, default, descr, enum, radio) end

--- Creates a range (numeric text entry) preference to be added to a Proto.prefs Lua table.
--- @param label string The Label (text in the right side of the preference input) for this preference.
--- @param default string The default value for this preference, e.g., "53", "10-30", or "10-30,53,55,100-120".
--- @param descr string A description of what this preference is.
--- @param max number The maximum value.
function Pref.range(label, default, descr, max) end

--- Creates a static text string to be added to a Proto.prefs Lua table.
--- @param label string The static text.
--- @param descr string The static text description.
function Pref.statictext(label, descr) end