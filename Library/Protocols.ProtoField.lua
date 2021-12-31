--- @meta
--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- A Protocol field (to be used when adding items to the dissection tree).
--- @class ProtoField
ProtoField = {}

--- Creates a new ProtoField object to be used for a protocol field.
--- @param name string Actual name of the field (the string that appears in the tree).
--- @param abbr string Filter name of the field (the string that is used in filters).
--- @param type ftypes Type: one of: ftypes.BOOLEAN, ftypes.CHAR, ftypes.UINT8, ftypes.UINT16, ftypes.UINT24, ftypes.UINT32, ftypes.UINT64, ftypes.INT8, ftypes.INT16, ftypes.INT24, ftypes.INT32, ftypes.INT64, ftypes.FLOAT, ftypes.DOUBLE , ftypes.ABSOLUTE_TIME, ftypes.RELATIVE_TIME, ftypes.STRING, ftypes.STRINGZ, ftypes.UINT_STRING, ftypes.ETHER, ftypes.BYTES, ftypes.UINT_BYTES, ftypes.IPv4, ftypes.IPv6, ftypes.IPXNET, ftypes.FRAMENUM, ftypes.PCRE, ftypes.GUID, ftypes.OID, ftypes.PROTOCOL, ftypes.REL_OID, ftypes.SYSTEM_ID, ftypes.EUI64 or ftypes.NONE.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that corresponds to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING, or one of frametype.NONE, frametype.REQUEST, frametype.RESPONSE, frametype.ACK or frametype.DUP_ACK if field type is ftypes.FRAMENUM.
--- @param base? base  The representation, one of: base.NONE, base.DEC, base.HEX, base.OCT, base.DEC_HEX, base.HEX_DEC, base.UNIT_STRING or base.RANGE_STRING.
--- @param mask? number  The bitmask to be used.
--- @param descr? string  The description of the field.
--- @return ProtoField @The newly created ProtoField object.
function ProtoField.new(name, abbr, type, valuestring, base, mask, descr) end

--- Creates a ProtoField of an 8-bit ASCII character.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.NONE, base.HEX, base.OCT or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.char(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of an unsigned 8-bit integer (i.e., a byte).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.HEX or base.OCT, base.DEC_HEX, base.HEX_DEC, base.UNIT_STRING or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing the unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.uint8(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of an unsigned 16-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.HEX, base.OCT, base.DEC_HEX, base.HEX_DEC, base.UNIT_STRING or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.uint16(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of an unsigned 24-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.HEX, base.OCT, base.DEC_HEX, base.HEX_DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing the unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.uint24(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of an unsigned 32-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.HEX, base.OCT, base.DEC_HEX, base.HEX_DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing the unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.uint32(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of an unsigned 64-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.HEX, base.OCT, base.DEC_HEX, base.HEX_DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing the unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.uint64(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of a signed 8-bit integer (i.e., a byte).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.int8(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of a signed 16-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.int16(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of a signed 24-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.int24(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of a signed 32-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.UNIT_STRING, or base.RANGE_STRING.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.int32(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField of a signed 64-bit integer.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.DEC, base.UNIT_STRING, or`base.RANGE_STRING`.
--- @param valuestring? table  A table containing the text that corresponds to the values, or a table containing tables of range string values that correspond to the values ({min, max, "string"}) if the base is base.RANGE_STRING, or a table containing unit name for the values if base is base.UNIT_STRING.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.int64(abbr, name, base, valuestring, mask, desc) end

--- Creates a ProtoField for a frame number (for hyperlinks between frames).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  Only base.NONE is supported for framenum.
--- @param frametype? frametype  One of frametype.NONE, frametype.REQUEST, frametype.RESPONSE, frametype.ACK or frametype.DUP_ACK.
--- @param mask? number  Integer mask of this field, which must be 0 for framenum.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.framenum(abbr, name, base, frametype, mask, desc) end

--- Creates a ProtoField for a boolean true/false value.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param display? base  How wide the parent bitfield is (base.NONE is used for NULL-value).
--- @param valuestring? table  A table containing the text that corresponds to the values.
--- @param mask? number  Integer mask of this field.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.bool(abbr, name, display, valuestring, mask, desc) end

--- Creates a ProtoField of a time_t structure value.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param base? base  One of base.LOCAL, base.UTC or base.DOY_UTC.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.absolute_time(abbr, name, base, desc) end

--- Creates a ProtoField of a time_t structure value.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.relative_time(abbr, name, desc) end

--- Creates a ProtoField of a floating point number (4 bytes).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param valuestring? table  A table containing unit name for the values.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.float(abbr, name, valuestring, desc) end

--- Creates a ProtoField of a double-precision floating point (8 bytes).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param valuestring? table  A table containing unit name for the values.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.double(abbr, name, valuestring, desc) end

--- Creates a ProtoField of a string value.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param display? base  One of base.ASCII or base.UNICODE.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.string(abbr, name, display, desc) end

--- Creates a ProtoField of a zero-terminated string value.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param display? base  One of base.ASCII or base.UNICODE.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.stringz(abbr, name, display, desc) end

--- Creates a ProtoField for an arbitrary number of bytes.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param display? base  One of base.NONE, base.DOT, base.DASH, base.COLON or base.SPACE.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.bytes(abbr, name, display, desc) end

--- Creates a ProtoField for an arbitrary number of unsigned bytes.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param display? base  One of base.NONE, base.DOT, base.DASH, base.COLON or base.SPACE.
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.ubytes(abbr, name, display, desc) end

--- Creates a ProtoField of an unstructured type.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.none(abbr, name, desc) end

--- Creates a ProtoField of an IPv4 address (4 bytes).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.ipv4(abbr, name, desc) end

--- Creates a ProtoField of an IPv6 address (16 bytes).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.ipv6(abbr, name, desc) end

--- Creates a ProtoField of an Ethernet address (6 bytes).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.ether(abbr, name, desc) end

--- Creates a ProtoField for a Globally Unique IDentifier (GUID).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.guid(abbr, name, desc) end

--- Creates a ProtoField for an ASN.1 Organizational IDentified (OID).
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.oid(abbr, name, desc) end

--- Creates a ProtoField for a sub-protocol.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.protocol(abbr, name, desc) end

--- Creates a ProtoField for an ASN.1 Relative-OID.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.rel_oid(abbr, name, desc) end

--- Creates a ProtoField for an OSI System ID.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.systemid(abbr, name, desc) end

--- Creates a ProtoField for an EUI64.
--- @param abbr string Abbreviated name of the field (the string used in filters).
--- @param name? string  Actual name of the field (the string that appears in the tree).
--- @param desc? string  Description of the field.
--- @return ProtoField @A ProtoField object to be added to a table set to the Proto.fields attribute.
function ProtoField.eui64(abbr, name, desc) end

--- @type ProtoField
local protofield = {}

--- @return string @a string with info about a protofield (for debugging purposes).
function protofield:__tostring() end