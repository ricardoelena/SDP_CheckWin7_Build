@echo off

setlocal

powershell.exe -ExecutionPolicy Bypass -Command "$param1=$args[0]; $result= $false; $Build = [System.Environment]::OSVersion.Version.Build -as [int]; $Major = [System.Environment]::OSVersion.Version.Major -as [int]; if ($Major -eq 6) {  if ($args[0] -as [int] -le $Build ) {$result = $true};};echo $result ;"

endlocal
