@echo off

:: Set the execution policy for PowerShell scripts
powershell -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser"

:: Associate .ps1 files with PowerShell
assoc .ps1=Microsoft.PowerShellScript.1
ftype Microsoft.PowerShellScript.1="C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" "-ExecutionPolicy Bypass" "-File" "%1" %*

:: Run the PowerShell script to gather information
powershell -File GatherInfo.ps1

echo Information gathering complete.
pause
exit /b


