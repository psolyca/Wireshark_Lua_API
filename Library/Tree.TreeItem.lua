--- @meta

--- Wireshark 3.6.1
--- 11.7. Adding Information To The Dissection Tree
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Tree.html

--- @class TreeItem
--- @field public text string Set/get the TreeItem's display string (string). For the getter, if the TreeItem has no display string, then nil is returned.
--- @field public visible boolean Get the TreeItem's subtree visibility status (boolean).
--- @field public generated boolean Set/get the TreeItem's generated state (boolean).
--- @field public hidden boolean Set/get TreeItem's hidden state (boolean).
--- @field public len number Set/get TreeItem's length inside tvb, after it has already been created
TreeItem = {}

--- @class TreeItem
local treeitem = {}

--- Adds a new child tree for the given ProtoField object to this tree item, returning the new child TreeItem.
--- @param protofield ProtoField The ProtoField field object to add to the tree.
--- @param tvbrange? TvbRange  The TvbRange of bytes in the packet this tree item covers/represents.
--- @param encoding number The field’s encoding in the TvbRange.
--- @param label? string  One or more strings to append to the created TreeItem.
--- @return TreeItem TreeItem The new child TreeItem, the field’s extracted value or nil, and offset or nil.
function treeitem:add_packet_field(protofield, tvbrange, encoding, label) end

--- Adds a child item to this tree item, returning the new child TreeItem.
--- If the ProtoField represents a numeric value (int, uint or float), then it’s treated as a Big Endian (network order) value.
--- This function has a complicated form: 'treeitem:add(protofield, tvbrange, value, label)', such that if the first argument is a ProtoField or a Proto, the second argument is a TvbRange, and a third argument is given, it’s a value; but if the second argument is a non-TvbRange, then it’s the value (as opposed to filling that argument with 'nil', which is invalid for this function). If the first argument is a non-ProtoField and a non-Proto then this argument can be either a TvbRange or a label, and the value is not in use.
--- @param protofield? ProtoField  The ProtoField field or Proto protocol object to add to the tree.
--- @param tvbrange? TvbRange  The TvbRange of bytes in the packet this tree item covers/represents.
--- @param value? number  The field’s value, instead of the ProtoField/Proto one.
--- @param label? string One or more strings to use for the tree item label, instead of the ProtoField/Proto one.
--- @return TreeItem TreeItem The new child TreeItem.
function treeitem:add(protofield, tvbrange, value, label) end

--- Adds a child item to this tree item, returning the new child TreeItem.
--- If the ProtoField represents a numeric value (int, uint or float), then it’s treated as a Little Endian value.
--- This function has a complicated form: 'treeitem:add_le(protofield, tvbrange, value, label)', such that if the first argument is a ProtoField or a Proto, the second argument is a TvbRange, and a third argument is given, it’s a value; but if the second argument is a non-TvbRange, then it’s the value (as opposed to filling that argument with 'nil', which is invalid for this function). If the first argument is a non-ProtoField and a non-Proto then this argument can be either a TvbRange or a label, and the value is not in use.
--- @param protofield? ProtoField  The ProtoField field or Proto protocol object to add to the tree.
--- @param tvbrange? TvbRange  The TvbRange of bytes in the packet this tree item covers/represents.
--- @param value? number  The field’s value, instead of the ProtoField/Proto one.
--- @param label? string  One or more strings to use for the tree item label, instead of the ProtoField/Proto one.
--- @return TreeItem TreeItem The new child TreeItem.
function treeitem:add_le(protofield, tvbrange, value, label) end

--- Sets the text of the label.
--- @param text string The text to be used.
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:set_text(text) end

--- Appends text to the label.
--- This used to return nothing, but as of 1.11.3 it returns the same tree item to allow chained calls.
--- @param text string The text to be appended.
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:append_text(text) end

--- Prepends text to the label.
--- This used to return nothing, but as of 1.11.3 it returns the same tree item to allow chained calls.
--- @param text string The text to be prepended.
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:prepend_text(text) end

--- Sets the expert flags of the item and adds expert info to the packet.
--- @param group? expert.group One of PI_CHECKSUM, PI_SEQUENCE, PI_RESPONSE_CODE, PI_REQUEST_CODE, PI_UNDECODED, PI_REASSEMBLE, PI_MALFORMED or PI_DEBUG.
--- @param severity? expert.severity One of PI_CHAT, PI_NOTE, PI_WARN, or PI_ERROR.
--- @param text? string  The text for the expert info display.
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:add_expert_info(group, severity, text) end

--- Sets the expert flags of the tree item and adds expert info to the packet.
--- @param expert ProtoExpert The ProtoExpert object to add to the tree.
--- @param text? string  Text for the expert info display (default is to use the registered text).
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:add_proto_expert_info(expert, text) end

--- Sets the expert flags of the tree item and adds expert info to the packet associated with the Tvb or TvbRange bytes in the packet.
--- @param expert ProtoExpert The ProtoExpert object to add to the tree.
--- @param tvb Tvb The Tvb or TvbRange object bytes to associate the expert info with.
--- @param text? string  Text for the expert info display (default is to use the registered text).
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:add_tvb_expert_info(expert, tvb, text) end

--- Marks the TreeItem as a generated field (with data inferred but not contained in the packet).
--- @param bool? boolean  A Lua boolean, which if true sets the TreeItem generated flag, else clears it (default=true)
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:set_generated(bool) end

--- Marks the TreeItem as a hidden field (neither displayed nor used in filters). Deprecated
--- @param bool? boolean  A Lua boolean, which if true sets the TreeItem hidden flag, else clears it. Default is true.
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:set_hidden(bool) end

--- Set TreeItem's length inside tvb, after it has already been created.
--- @param len number The length to be used.
--- @return TreeItem TreeItem The same TreeItem.
function treeitem:set_len(len) end

--- Checks if a ProtoField or Dissector is referenced by a filter/tap/UI.
--- If this function returns false, it means that the field (or dissector) does not need to be dissected and can be safely skipped. By skipping a field rather than dissecting it, the dissector will usually run faster since Wireshark will not do extra dissection work when it doesn’t need the field.
--- You can use this in conjunction with the TreeItem.visible attribute. This function will always return TRUE when the TreeItem is visible. When it is not visible and the field is not referenced, you can speed up the dissection by not dissecting the field as it is not needed for display or filtering.
--- This function takes one parameter that can be a ProtoField or Dissector. The Dissector form is useful when you need to decide whether to call a sub-dissector.
--- @param protofield ProtoField The ProtoField or Dissector to check if referenced.
--- @return boolean boolean A boolean indicating if the ProtoField/Dissector is referenced
function treeitem:referenced(protofield) end

--- @return string string debug information about the TreeItem.
function treeitem:__tostring() end
