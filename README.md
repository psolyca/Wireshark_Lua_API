# Wireshark Lua API functions and classes definitions

When using VSCodium (or VSCode) with [Sumneko Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) plugin, definitions of 3rd part API have to be integrated. 

Here you will find definitions of functions and classes for Wireshark Lua API.

## Installation
This code is not integrated in [Sumneko repository](https://github.com/sumneko/lua-language-server) yet but it is ready to be copied in `~\.vscode-oss\extensions\sumneko.lua-2.5.3\server\meta\3rd` folder for `VSCodium`.  
It should be `~\.vscode\extensions\sumneko.lua-2.5.3\server\meta\3rd` folder for `VSCode`.  
On Windows, look in `%USERPROFILE%`.

Otherwise, put these files in your workspace or put the path in `Lua.workspace.library` variable in `Sumneko extension` settings.

# References
[Wireshark API manual](https://www.wireshark.org/docs/wsdg_html_chunked/wsluarm_modules.html)

[Issue on Sumneko repository](https://github.com/sumneko/lua-language-server/issues/545)

[roddypratt repository](https://github.com/roddypratt/router_dissectors/blob/main/wireshark.lua)