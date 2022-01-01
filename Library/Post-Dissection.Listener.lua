--- @meta

--- Wireshark 3.6.1
--- 11.4. Post-Dissection Packet Analysis
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Listener.html

--- A Listener is called once for every packet that matches a certain filter or has a certain tap. It can read the tree, the packet’s Tvb buffer as well as the tapped data, but it cannot add elements to the tree.
--- @class Listener
--- @field public packet function A function that will be called once every packet matches the Listener listener filter.
--- When later called by Wireshark, the packet function will be given:
---         A Pinfo object
---         A Tvb object
---         A tapinfo table
---             function tap.packet(pinfo,tvb,tapinfo) ... end
--- @field  public draw function A function that will be called once every few seconds to redraw the GUI objects; in TShark this funtion is called only at the very end of the capture file.
--- When later called by Wireshark, the draw function will not be given any arguments.
---     function tap.draw() ... end
--- @field public reset function A function that will be called at the end of the capture run.
Listener = {}

--- Creates a new Listener tap object.
--- @param tap? string  The name of this tap. See Listener.list() for a way to print valid listener names.
--- @param filter? string  A display filter to apply to the tap. The tap.packet function will be called for each matching packet. The default is nil, which matches every packet. Example: "m2tp".
--- @param allfields? boolean  Whether to generate all fields. The default is false. Note: This impacts performance.
--- @return Listener Listener The newly created Listener listener object
function Listener.new(tap, filter, allfields) end

--- Gets a Lua array table of all registered Listener tap names.
--- @return string[] @The array table of registered tap names
function Listener.list() end

--- @class Listener
local listener = {}

--- Removes a tap Listener.
function listener:remove() end

--- Generates a string of debug info for the tap Listener.
--- @return string string
function listener:__tostring() end

