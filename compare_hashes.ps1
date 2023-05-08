# Author: toxx
<#
	.Description
	Compares SHA256 Hash for a given file with a given Hash value. Takes relative as well as absolute paths.
#>

$Filename = Read-Host -Prompt 'Filename'
$Hashvalue = Read-Host -Prompt 'Hash value'
Write-Host "----------------"
if ((Get-FileHash $Filename).Hash -eq $Hashvalue) {Write-Host "Hashes match!" -ForegroundColor DarkBlue -BackgroundColor Green}
else {Write-Host "Careful! Hashes do not match!" -ForegroundColor DarkBlue -BackgroundColor Red}
Write-Host "----------------"
pause