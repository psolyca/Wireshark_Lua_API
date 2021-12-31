--- @meta

--- Wireshark 3.6.1
--- 11.6. Functions For New Protocols And Dissectors
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html

--- Make a Proto protocol (with a dissector function) a post-dissector. It will be called for every frame after dissection.
--- @param proto Proto The protocol to be used as post-dissector.
--- @param allfields? boolean  Whether to generate all fields. Note: This impacts performance (default=false).
function register_postdissector(proto, allfields) end

--- Make the TCP-layer invoke the given Lua dissection function for each PDU in the TCP segment, of the length returned by the given get_len_func function.
--- This function is useful for protocols that run over TCP and that are either a fixed length always, or have a minimum size and have a length field encoded within that minimum portion that identifies their full length. For such protocols, their protocol dissector function can invoke this dissect_tcp_pdus() function to make it easier to handle dissecting their protocol’s messages (i.e., their protocol data unit (PDU)). This function shouild not be used for protocols whose PDU length cannot be determined from a fixed minimum portion, such as HTTP or Telnet.
--- @param tvb Tvb The Tvb buffer to dissect PDUs from.
--- @param tree TreeItem The Tvb buffer to dissect PDUs from.
--- @param min_header_size number The number of bytes in the fixed-length part of the PDU.
--- @param get_len_func function A Lua function that will be called for each PDU, to determine the full length of the PDU. The called function will be given (1) the Tvb object of the whole Tvb (possibly reassembled), (2) the Pinfo object, and (3) an offset number of the index of the first byte of the PDU (i.e., its first header byte). The Lua function must return a Lua number of the full length of the PDU.
--- @param dissect_func function A Lua function that will be called for each PDU, to dissect the PDU. The called function will be given (1) the Tvb object of the PDU’s Tvb (possibly reassembled), (2) the Pinfo object, and (3) the TreeItem object. The Lua function must return a Lua number of the number of bytes read/handled, which would typically be the Tvb:len().
--- @param desegment? boolean  Whether to reassemble PDUs crossing TCP segment boundaries or not. (default=true)
function dissect_tcp_pdus(tvb, tree, min_header_size, get_len_func, dissect_func, desegment) end

