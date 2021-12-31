--- @meta

--- Wireshark 3.6.1
--- 11.12. Utility Functions
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Utility.html

--- Global Functions

--- Gets the Wireshark version as a string.
--- @return string @The version string, e.g. "3.2.5".
function get_version() end

--- Set a Lua table with meta-data about the plugin, such as version.
--- The passed-in Lua table entries need to be keyed/indexed by the following:
    --- "version" with a string value identifying the plugin version (required)
    --- "description" with a string value describing the plugin (optional)
    --- "author" with a string value of the author’s name(s) (optional)
    --- "repository" with a string value of a URL to a repository (optional)
--- Not all of the above key entries need to be in the table. The 'version' entry is required, however. The others are not currently used for anything, but might be in the future and thus using them might be useful. Table entries keyed by other strings are ignored, and do not cause an error.
--- @param table table The Lua table of information.
function set_plugin_info(table) end

--- Formats an absolute timestamp into a human readable date.
--- @param timestamp number A timestamp value to convert.
--- @return string @A string with the formated date
function format_date(timestamp) end

--- Formats a relative timestamp in a human readable time.
--- @param timestamp number A timestamp value to convert.
--- @return string @A string with the formated time
function format_time(timestamp) end

--- Get a preference value. @since 3.5.0
--- @param preference string The name of the preference.
--- @return number @The preference value, or nil if not found.
function get_preference(preference) end

--- Set a preference value. @since 3.5.0
--- @param preference string The name of the preference.
--- @param value number The preference value to set.
--- @return boolean @true if changed, false if unchanged or nil if not found.
function set_preference(preference, value) end

--- Reset a preference to default value. @since 3.5.0
--- @param preference string The name of the preference.
--- @return boolean @true if valid preference
function reset_preference(preference) end

--- Write preferences to file and apply changes. @since 3.5.0
function apply_preferences() end

--- Reports a failure to the user.
--- @param text string Message text to report.
function report_failure(text) end

--- Loads a Lua file and compiles it into a Lua chunk, similar to the standard loadfile but searches additional directories. The search order is the current directory, followed by the user’s personal configuration directory, and finally the global configuration directory.
--- @param filename string Name of the file to be loaded. If the file does not exist in the current directory, the user and system directories are searched.
function loadfile(filename) end

--- Loads a Lua file and executes it as a Lua chunk, similar to the standard dofile but searches additional directories. The search order is the current directory, followed by the user’s personal configuration directory, and finally the global configuration directory.
--- @param filename string Name of the file to be run. If the file does not exist in the current directory, the user and system directories are searched.
function dofile(filename) end

--- Register a function to handle a -z option
--- @param argument string The name of the option argument.
--- @param action? function  The function to be called when the command is invoked.
function register_stat_cmd_arg(argument, action) end