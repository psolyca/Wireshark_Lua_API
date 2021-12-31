--- @meta

--- Wireshark 3.6.1
--- 11.3. GUI Support
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Gui.html

--- Checks if we’re running inside a GUI (i.e. Wireshark) or not.
--- @return boolean boolean Boolean true if a GUI is available, false if it isn’t.
function gui_enabled() end

--- @class menuGroup
local menuGroup ={
	["MENU_STAT_UNSORTED"] = MENU_STAT_UNSORTED,
	["MENU_STAT_GENERIC"] = MENU_STAT_GENERIC,
	["MENU_STAT_CONVERSATION"] = MENU_STAT_CONVERSATION,
	["MENU_STAT_ENDPOINT"] = MENU_STAT_ENDPOINT,
	["MENU_STAT_RESPONSE"] = MENU_STAT_RESPONSE,
	["MENU_STAT_RSERPOOL"] = MENU_STAT_RSERPOOL,
	["MENU_STAT_TELEPHONY"] = MENU_STAT_TELEPHONY,
	["MENU_STAT_TELEPHONY_ANSI"] = MENU_STAT_TELEPHONY_ANSI,
	["MENU_STAT_TELEPHONY_GSM"] = MENU_STAT_TELEPHONY_GSM,
	["MENU_STAT_TELEPHONY_LTE"] = MENU_STAT_TELEPHONY_LTE,
	["MENU_STAT_TELEPHONY_MTP3"] = MENU_STAT_TELEPHONY_MTP3,
	["MENU_STAT_TELEPHONY_SCTP"] = MENU_STAT_TELEPHONY_SCTP,
	["MENU_ANALYZE_UNSORTED"] = MENU_ANALYZE_UNSORTED,
	["MENU_ANALYZE_CONVERSATION"] = MENU_ANALYZE_CONVERSATION,
	["MENU_TOOLS_UNSORTED"] = MENU_TOOLS_UNSORTED
}

--- Register a menu item in one of the main menus. Requires a GUI.
--- @param name string The name of the menu item. Use slashes to separate submenus. (e.g. Lua Scripts → My Fancy Statistics). (string)
--- @param action function The function to be called when the menu item is invoked. The function must take no arguments and return nothing.
--- @param group? menuGroup  Where to place the item in the menu hierarchy. If omitted, defaults to MENU_STAT_GENERIC.
function register_menu(name, action, group) end

--- Displays a dialog, prompting for input. The dialog includes an OK button and Cancel button. Requires a GUI.
--- @param title string The title of the dialog.
--- @param action string Action to be performed when the user presses OK.
--- @param ... string Strings to be used a labels of the dialog’s fields.
--- Each string creates a new labeled field.
--- The first field is required.
--- Instead of a strings it is possible to provide tables with fields 'name' and 'value' of type string.
--- Then the created dialog’s field will labeld with the content of name and prefilled with the content of value.
--- At least one field required
function new_dialog(title, action, ...) end

--- Rescans all packets and runs each tap listener without reconstructing the display.
function retap_packets() end

--- Copy a string into the clipboard. Requires a GUI.
--- @param text string The string to be copied into the clipboard.
function copy_to_clipboard(text) end

--- Open and display a capture file. Requires a GUI.
--- @param filename string The name of the file to be opened.
--- @param filter string The display filter to be applied once the file is opened.
function open_capture_file(filename, filter) end

--- Get the main filter text.
--- @return string string
function get_filter() end

--- Set the main filter text.
--- @param text string The filter’s text.
function set_filter(text) end


--- Default background colors
--- Index	RGB (hex)	Color
---  1  	ffc0c0  	pink 1
---  2  	ffc0ff  	pink 2
---  3  	e0c0e0  	purple 1
---  4  	c0c0ff  	purple 2
---  5  	c0e0e0  	green 1
---  6  	c0ffff  	green 2
---  7  	c0ffc0  	green 3
---  8  	ffffc0  	yellow 1
---  9  	e0e0c0  	yellow 2
---  10 	e0e0e0  	gray

--- Gets the current packet coloring rule (by index) for the current session. Wireshark reserves 10 slots for these coloring rules. Requires a GUI.
--- @param row number The index (1-10) of the desired color filter value in the temporary coloring rules list.
--- @return number number
function get_color_filter_slot(row) end

--- Sets a packet coloring rule (by index) for the current session. Wireshark reserves 10 slots for these coloring rules. Requires a GUI.
--- @param row number The index (1-10) of the desired color in the temporary coloring rules list. The default foreground is black and the default backgrounds are listed below.
--- @param text string The display filter for selecting packets to be colorized .
function set_color_filter_slot(row, text) end

--- Apply the filter in the main filter box. Requires a GUI.
--- Avoid calling this from within a dissector function or else an infinite loop can occur if it causes the dissector to be called again. This function is best used in a button callback (from a dialog or text window) or menu callback.
function apply_filter() end

--- Reload the current capture file. Deprecated. Use reload_packets() instead.
function reload() end

--- Reload the current capture file. Requires a GUI.
--- Avoid calling this from within a dissector function or else an infinite loop can occur if it causes the dissector to be called again. This function is best used in a button callback (from a dialog or text window) or menu callback.
function reload_packets() end

--- Redissect all packets in the current capture file. Requires a GUI.
--- Avoid calling this from within a dissector function or else an infinite loop can occur if it causes the dissector to be called again. This function is best used in a button callback (from a dialog or text window) or menu callback.
function redissect_packets() end

--- Reload all Lua plugins.
function reload_lua_plugins() end

--- Opens an URL in a web browser. Requires a GUI.
--- Do not pass an untrusted URL to this function.
--- It will be passed to the system’s URL handler, which might execute malicious code, switch on your Bluetooth-connected foghorn, or any of a number of unexpected or harmful things.
--- @param url string The url.
function browser_open_url(url) end

--- Open a file located in the data directory (specified in the Wireshark preferences) in the web browser. If the file does not exist, the function silently ignores the request. Requires a GUI.
--- Do not pass an untrusted URL to this function.
--- It will be passed to the system’s URL handler, which might execute malicious code, switch on your Bluetooth-connected foghorn, or any of a number of unexpected or harmful things.
--- @param filename string The file name.
function browser_open_data_file(filename) end