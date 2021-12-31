--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- A Protocol expert info field, to be used when adding items to the dissection tree.
--- @class ProtoExpert
ProtoExpert = {}

--- Creates a new ProtoExpert object to be used for a protocol’s expert information notices.
--- @param abbr string Filter name of the expert info field (the string that is used in filters).
--- @param text string The default text of the expert field.
--- @param group expert.group Expert group type: one of: expert.group.CHECKSUM, expert.group.SEQUENCE, expert.group.RESPONSE_CODE, expert.group.REQUEST_CODE, expert.group.UNDECODED, expert.group.REASSEMBLE, expert.group.MALFORMED, expert.group.DEBUG, expert.group.PROTOCOL, expert.group.SECURITY, expert.group.COMMENTS_GROUP, expert.group.DECRYPTION, expert.group.ASSUMPTION or expert.group.DEPRECATED.
--- @param severity expert.severity Expert severity type: one of: expert.severity.COMMENT, expert.severity.CHAT, expert.severity.NOTE, expert.severity.WARN, or expert.severity.ERROR.
--- @return ProtoExpert @The newly created ProtoExpert object.
function ProtoExpert.new(abbr, text, group, severity) end

--- @type ProtoExpert
local protoexpert = {}

--- @return string @a string with debugging information about a ProtoExpert object.
function protoexpert:__tostring() end