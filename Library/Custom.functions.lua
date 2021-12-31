--- @meta

--- Wireshark 3.6.1
--- 11.9. Custom File Format Reading And Writing
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_File.html

--- Register the FileHandler into Wireshark/TShark, so they can read/write this new format. All functions and settings must be complete before calling this registration function. This function cannot be called inside the reading/writing callback functions.
--- @param filehandler FileHandler The FileHandler object to be registered@return the new type number for this file reader/write
function register_filehandler(filehandler) end

--- Deregister the FileHandler from Wireshark/TShark, so it no longer gets used for reading/writing/display. This function cannot be called inside the reading/writing callback functions.
--- @param filehandler FileHandler The FileHandler object to be deregistered
function deregister_filehandler(filehandler) end