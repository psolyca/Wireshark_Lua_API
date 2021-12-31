--- @meta
--- Wireshark 3.6.1
--- 11.10. Directory Handling Functions
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Dir.html

--- A Directory object, as well as associated functions.
--- @class Dir
Dir = {}

--- Creates a directory.
--- The created directory is set for permission mode 0755 (octal), meaning it is read+write+execute by owner, but only read+execute by group members and others.
--- If the directory was created successfully, a boolean true is returned. If the directory cannot be made because it already exists, false is returned. If the directory cannot be made because an error occurred, nil is returned.
--- @param name string The name of the directory, possibly including path.
--- @return boolean @Boolean true on success, false if the directory already exists, nil on error.
function Dir.make(name) end

--- Returns true if the given directory name exists.
--- If the directory exists, a boolean true is returned. If the path is a file instead, false is returned. If the path does not exist or an error occurred, nil is returned.
--- @param name string The name of the directory, possibly including path.
--- @return boolean @Boolean true if the directory exists, false if it’s a file, nil on error or not-exist.
function Dir.exists(name) end

--- Removes an empty directory.
--- If the directory was removed successfully, a boolean true is returned. If the directory cannot be removed because it does not exist, false is returned. If the directory cannot be removed because an error occurred, nil is returned.
--- This function only removes empty directories. To remove a directory regardless, use Dir.remove_all().
--- @param name string The name of the directory, possibly including path.
--- @return boolean @Boolean true on success, false if does not exist, nil on error.
function Dir.remove(name) end

--- Removes an empty or non-empty directory.
--- If the directory was removed successfully, a boolean true is returned. If the directory cannot be removed because it does not exist, false is returned. If the directory cannot be removed because an error occurred, nil is returned.
--- @param name string The name of the directory, possibly including path.
--- @return boolean @Boolean true on success, false if does not exist, nil on error.
function Dir.remove_all(name) end

--- Opens a directory and returns a Dir object representing the files in the directory.
--- @param pathname string The pathname of the directory.
--- @param extension? string  If given, only files with this extension will be returned.
--- @return Dir @The Dir object.
function Dir.open(pathname, extension) end

--- Gets the personal configuration directory path, with filename if supplied.
--- @param filename? string  A filename.
--- @return string @The full pathname for a file in the personal configuration directory.
function Dir.personal_config_path(filename) end

--- Gets the global configuration directory path, with filename if supplied.
--- @param filename? string  A filename
--- @return string @The full pathname for a file in Wireshark’s configuration directory.
function Dir.global_config_path(filename) end

--- Gets the personal plugins directory path.
--- @return string @The pathname of the personal plugins directory.
function Dir.personal_plugins_path() end

--- Gets the global plugins directory path.
--- @return string @The pathname of the global plugins directory.
function Dir.global_plugins_path() end

--- @type Dir
local dir = {}

--- Gets the next file or subdirectory within the directory, or nil when done.
function dir:__call() end

--- Closes the directory. Called automatically during garbage collection of a Dir object.
function dir:close() end