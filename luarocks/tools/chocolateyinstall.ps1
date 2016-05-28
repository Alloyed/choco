$ErrorActionPreference = 'Stop';

$packageName = 'luarocks'

Install-ChocolateyPath "$env:chocolateyPackageFolder\luarocks" "user"
Install-ChocolateyPath "$env:chocolateyPackageFolder\luarocks\systree\bin" "user"
Install-ChocolateyPath "$env:appdata\LuaRocks\bin" "user"

