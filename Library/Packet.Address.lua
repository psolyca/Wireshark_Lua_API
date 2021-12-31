--- @meta

--- Wireshark 3.6.1
--- 11.5. Obtaining Packet Information
--- https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Pinfo.html

--- Represents an address.
--- @class Address
Address = {}

--- Creates an Address Object representing an IPv4 address.
--- @param hostname string The address or name of the IP host.
--- @return Address @The Address object.
function Address.ip(hostname) end

--- Creates an Address Object representing an IPv6 address.
--- @param hostname string The address or name of the IP host.
--- @return Address @The Address object
function Address.ipv6(hostname) end

--- Creates an Address Object representing an Ethernet address.
--- @param eth string The Ethernet address.
--- @return Address @The Address object.
function Address.ether(eth) end

--- @type Address
local address = {}

--- @return string @ The string representing the address.
function address:__tostring() end

--- Compares two Addresses.
function address:__eq() end

--- Compares two Addresses.
function address:__le() end

--- Compares two Addresses.
function address:__lt() end