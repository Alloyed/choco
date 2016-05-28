$ErrorActionPreference = 'Stop';

$packageName = 'luarocks'

$binpath="$env:chocolateyPackageFolder\luarocks"
$globalpath="$env:chocolateyPackageFolder\luarocks\systree\bin"
$localpath="$env:appdata\LuaRocks\bin"
$path = [Environment]::GetEnvironmentVariable("PATH",[EnvironmentVariableTarget]::User)
if ( $path.Contains($localpath) ) {
	$cleanUserPath = $([Environment]::GetEnvironmentVariable("PATH", [EnvironmentVariableTarget]::User)).Replace("$localpath;",'')
	[Environment]::SetEnvironmentVariable("PATH", "$cleanUserPath", [EnvironmentVariableTarget]::User)
}
if ( $path.Contains($globalpath) ) {
	$cleanUserPath = $([Environment]::GetEnvironmentVariable("PATH", [EnvironmentVariableTarget]::User)).Replace("$globalpath;",'')
	[Environment]::SetEnvironmentVariable("PATH", "$cleanUserPath", [EnvironmentVariableTarget]::User)
}
if ( $path.Contains($binpath) ) {
	$cleanUserPath = $([Environment]::GetEnvironmentVariable("PATH", [EnvironmentVariableTarget]::User)).Replace("$binpath;",'')
	[Environment]::SetEnvironmentVariable("PATH", "$cleanUserPath", [EnvironmentVariableTarget]::User)
}
