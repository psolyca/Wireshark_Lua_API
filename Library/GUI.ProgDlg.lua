--- @meta

--- Wireshark 3.6.1
--- 11.3. GUI Support
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Gui.html

--- @class ProgDlg
--- Creates and manages a modal progress bar. This is intended to be used with coroutines, where a main UI thread controls the progress bar dialog while a background coroutine (worker thread) yields to the main thread between steps. The main thread checks the status of the Cancel button and if it’s not set, @return control to the coroutine.
ProgDlg = {}

--- Creates and displays a new ProgDlg progress bar with a Cancel button and optional title. It is highly recommended that you wrap code that uses a ProgDlg instance because it does not automatically close itself upon encountering an error. Requires a GUI.
--- @param title? string  Title of the progress bar. Defaults to "Progress".
--- @param task? string  Optional task name, which will be appended to the title. Defaults to the empty string ("").
--- @return ProgDlg ProgDlg The newly created ProgDlg object.
function ProgDlg.new(title, task) end

--- @type ProgDlg
local progdlg = {}

--- Sets the progress dialog’s progress bar position based on percentage done.
--- @param progress number Progress value, e.g. 0.75. Value must be between 0.0 and 1.0 inclusive.
--- @param task? string  Task name. Currently ignored. Defaults to empty string ("").
function progdlg:update(progress, task) end

--- Checks whether the user has pressed the Cancel button.
--- @return boolean boolean Boolean true if the user has asked to stop the operation, false otherwise.
function progdlg:stopped() end

--- Hides the progress bar.
--- @return string string A string specifying whether the Progress Dialog has stopped or not.
function progdlg:close() end