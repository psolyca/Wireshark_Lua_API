--- @meta

--- Wireshark 3.6.1
--- 11.5. Obtaining Packet Information
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Pinfo.html

--- The Columns of the packet list.
--- @class Columns
Columns = {}

--- @type Columns
local columns = {}

--- @return string @The string "Columns". This has no real use aside from debugging.
function columns:__tostring() end

--- Sets the text of a specific column. Some columns cannot be modified, and no error is raised if attempted. The columns that are known to allow modification are "info" and "protocol".
--- @param column string The name of the column to set. Valid values are:
        --- Name					Description
        --- number					Frame number
        --- abs_time				Absolute timestamp
        --- utc_time				UTC timestamp
        --- cls_time				CLS timestamp
        --- rel_time				Relative timestamp
        --- date					Absolute date and time
        --- date_doy				Absolute year, day of year, and time
        --- utc_date				UTC date and time
        --- utc_date_doy			UTC year, day of year, and time
        --- delta_time				Delta time from previous packet
        --- delta_time_displayed	Delta time from previous displayed packet
        --- src						Source address
        --- src_res					Resolved source address
        --- src_unres				Numeric source address
        --- dl_src					Source data link address
        --- dl_src_res				Resolved source data link address
        --- dl_src_unres			Numeric source data link address
        --- net_src					Source network address
        --- net_src_res				Resolved source network address
        --- net_src_unres			Numeric source network address
        --- dst						Destination address
        --- dst_res					Resolve destination address
        --- dst_unres				Numeric destination address
        --- dl_dst					Destination data link address
        --- dl_dst_res				Resolved destination data link address
        --- dl_dst_unres			Numeric destination data link address
        --- net_dst					Destination network address
        --- net_dst_res				Resolved destination network address
        --- net_dst_unres			Numeric destination network address
        --- src_port				Source port
        --- src_port_res			Resolved source port
        --- src_port_unres			Numeric source port
        --- dst_port				Destination port
        --- dst_port_res			Resolved destination port
        --- dst_port_unres			Numeric destination port
        --- protocol				Protocol name
        --- info					General packet information
        --- packet_len				Packet length
        --- cumulative_bytes		Cumulative bytes in the capture
        --- direction				Packet direction
        --- vsan					Virtual SAN
        --- tx_rate					Transmit rate
        --- rssi					RSSI value
        --- dce_call				DCE call
--- @param text string The text for the column.
function columns:__newindex(column, text) end

--- Get a specific Column.
function columns:__index() end