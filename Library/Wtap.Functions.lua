--- @meta

--- Wireshark 3.6.1
--- 11.11. Wtap Functions For Handling Capture File Types
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Wtap.html

--- Global Functions

--- Get a string describing a capture file type, given a filetype value for that file type.
--- @param filetype wtap_filetypes The type for which the description is to be fetched - a number returned by wtap_name_to_file_type_subtype().
--- @return string @The description of the file type with that filetype value, or nil if there is no such file type.
function wtap_file_type_subtype_description(filetype) end

--- Get a string giving the name for a capture file type, given a filetype value for that file type.
--- @param filetype wtap_filetypes The type for which the name is to be fetched - a number returned by wtap_name_to_file_type_subtype().
--- @return string @The name of the file type with that filetype value, or nil if there is no such file type.
function wtap_file_type_subtype_name(filetype) end

--- Get a filetype value for a file type, given the name for that file type.
--- name The name of a file type.
--- @return number @The filetype value for the file type with that name, or nil if there is no such file type.
function wtap_name_to_file_type_subtype(name) end

--- Get the filetype value for pcap files.
--- @return number @The filetype value for pcap files.
function wtap_pcap_file_type_subtype() end

--- Get the filetype value for nanosecond-resolution pcap files.
--- @return number @The filetype value for nanosecond-resolution pcap files.
function wtap_pcap_nsec_file_type_subtype() end

--- Get the filetype value for pcapng files.
--- @return number @The filetype value for pcapng files. The table.
function wtap_pcapng_file_type_subtype() end