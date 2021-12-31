--- @meta

--- Wireshark 3.6.1
--- 11.1. Saving Capture Files
--- https://www.wireshark.org/docs/wsdg_html_chunked/wsluarm_modules.html#lua_module_Dumper

--- A pseudoheader to be used to save captured frames.
--- @class PseudoHeader
PseudoHeader = {}

--- Creates a "no" pseudoheader.
--- @return PseudoHeader @A null pseudoheader
function PseudoHeader.none() end

--- Creates an ethernet pseudoheader.
--- @param fcslen? number  The fcs length
--- @return PseudoHeader @The ethernet pseudoheader
function PseudoHeader.eth(fcslen) end

--- Creates an ATM pseudoheader.
--- @param aal? number  AAL number
--- @param vpi? number  VPI
--- @param vci? number  VCI
--- @param channel? number  Channel
--- @param cells? number  Number of cells in the PDU
--- @param aal5u2u? number  AAL5 User to User indicator
--- @param aal5len? number  AAL5 Len
--- @return PseudoHeader @The ATM pseudoheader
function PseudoHeader.atm(aal, vpi, vci, channel, cells, aal5u2u, aal5len) end

--- Creates an MTP2 PseudoHeader.
--- @param sent? boolean  True if the packet is sent, False if received.
--- @param annexa? boolean  True if annex A is used.
--- @param linknum? number  Link Number.
--- @return PseudoHeader @The MTP2 pseudoheader
function PseudoHeader.mtp2(sent, annexa, linknum) end

