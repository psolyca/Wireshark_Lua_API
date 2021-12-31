--- @meta

--- Wireshark 3.6.1
--- 11.5. Obtaining Packet Information
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Pinfo.html

--- Packet information.
--- @class Pinfo
--- @field public visited boolean Whether this packet has been already visited.
--- @field public number number The number of this packet in the current file.
--- @field public len number The length of the frame.
--- @field public caplen number The captured length of the frame.
--- @field public abs_ts number When the packet was captured.
--- @field public rel_ts number Number of seconds passed since beginning of capture.
--- @field public delta_ts number Number of seconds passed since the last captured packet.
--- @field public delta_dis_ts number Number of seconds passed since the last displayed packet.
--- @field public curr_proto Proto Which Protocol are we dissecting.
--- @field public can_desegment boolean Set if this segment could be desegmented.
--- @field public desegment_len number Estimated number of additional bytes required for completing the PDU.
--- @field public desegment_offset number Offset in the tvbuff at which the dissector will continue processing when next called.
--- @field public fragmented boolean If the protocol is only a fragment.
--- @field public in_error_pkt boolean If we’re inside an error packet.
--- @field public match_uint number Matched uint for calling subdissector from table.
--- @field public match_string string Matched string for calling subdissector from table.
--- @field public port_type string Type of Port of .src_port and .dst_port.
--- @field public src_port number Source Port of this Packet.
--- @field public dst_port number Destination Port of this Packet.
--- @field public dl_src string Data Link Source Address of this Packet.
--- @field public dl_dst string Data Link Destination Address of this Packet.
--- @field public net_src string Network Layer Source Address of this Packet.
--- @field public net_dst string Network Layer Destination Address of this Packet.
--- @field public src string Source Address of this Packet.
--- @field public dst string Destination Address of this Packet.
--- @field public p2p_dir string Direction of this Packet. (incoming / outgoing)
--- @field public match number Port/Data we are matching.
--- @field public columns Columns Access to the packet list columns.
--- @field public cols Columns Access to the packet list columns (equivalent to @field columns).
--- @field public private PrivateTable Access to the private table entries.
--- @field public hi number Higher Address of this Packet.
--- @field public lo number Lower Address of this Packet.
--- @field public conversation Proto Sets the packet conversation to the given Proto object.
Pinfo = {}