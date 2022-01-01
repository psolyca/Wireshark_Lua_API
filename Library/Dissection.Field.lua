--- @meta

--- Wireshark 3.6.1
--- 11.2. Obtaining Dissection Data
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Field.html

--- A Field extractor to obtain field values. A Field object can only be created outside of the callback functions of dissectors, post-dissectors, heuristic-dissectors, and taps.
--- Once created, it is used inside the callback functions, to generate a FieldInfo object.
--- @class Field
--- @field public name string The filter name of this field, or nil.
--- @field public display string The full display name of this field, or nil.
--- @field public type ftypes The ftype of this field, or nil.
Field = {}

--- @param fieldname string The filter name of the field (e.g. ip.addr)
--- @return Field Field The field extractor
--- Create a Field extractor.
function Field.new(fieldname) end

--- Gets a Lua array table of all registered field filter names.
--- @return Field[] Table The array table of field filter names
function Field.list() end

--- @class Field
local field = {}

--- Obtain all values (see FieldInfo) for this field.
--- @return table Table All the values of this field
function field:__call() end

--- Obtain a string with the field filter name.
--- @return string
function field:__tostring() end

-- Obtain all fields from the current tree. Note this only gets whatever fields the underlying dissectors have filled in for this packet at this time - there may be fields applicable to the packet that simply aren’t being filled in because at this time they’re not needed for anything. This function only gets what the C-side code has currently populated, not the full list.
--- @return Field[]
function all_field_infos() end