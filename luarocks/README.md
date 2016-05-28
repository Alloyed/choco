This package is manually composed because installers are confusing.

Steps:

* download newest official luarocks package
* install.bat /SELFCONTAINED /P /L /P C:\ProgramData\chocolatey\lib\luarocks\luarocks
* Then manually copy the installed dir into luarocks/luarocks

The installer hardcodes paths which means that choco can't actually modify that C:\ path above. I think that's same old same old for windows but I don't feel very good about it.

