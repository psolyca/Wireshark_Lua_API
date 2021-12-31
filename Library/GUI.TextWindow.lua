--- @meta

--- Wireshark 3.6.1
--- 11.3. GUI Support
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Gui.html

--- Creates and manages a text window. The text can be read-only or editable, and buttons can be added below the text.
--- @class TextWindow
TextWindow = {}

--- Creates a new TextWindow text window and displays it. Requires a GUI.
--- @param title? string  Title of the new window. Optional. Defaults to "Untitled Window".
--- @return TextWindow TextWindow The newly created TextWindow object.
function TextWindow.new(title) end

--- @type TextWindow
local textwindow = {}

--- Set the function that will be called when the text window closes.
--- @param action function A Lua function to be executed when the user closes the text window.
--- @return TextWindow TextWindow The TextWindow object.
function textwindow:set_atclose(action) end

--- Sets the text to be displayed.
--- @param text string The text to be displayed.
--- @return TextWindow TextWindow The TextWindow object.
function textwindow:set(text) end

--- Appends text to the current window contents.
--- @param text string  The text to be appended.
--- @return TextWindow TextWindow The TextWindow object.
function textwindow:append(text) end

--- Prepends text to the current window contents.
--- @param text string The text to be prepended.
--- @return TextWindow TextWindowThe TextWindow object.
function textwindow:prepend(text) end

--- Erases all of the text in the window.
--- @return TextWindow TextWindow The TextWindow object.
function textwindow:clear() end

--- Get the text of the window.
--- @return TextWindow TextWindow The `TextWindow’s text.
function textwindow:get_text() end

--- Close the window.
function textwindow:close() end

--- Make this text window editable.
--- @param editable? boolean  true to make the text editable, false otherwise. Defaults to true.
--- @return TextWindow TextWindow The TextWindow object.
function textwindow:set_editable(editable) end

--- Adds a button with an action handler to the text window.
--- @param label string The button label.
--- @param callback function The Lua function to be called when the button is pressed.
--- @return TextWindow TextWindow The TextWindow object.
function textwindow:add_button(label, callback) end