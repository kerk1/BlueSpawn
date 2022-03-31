@echo off
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common Startup" /t REG_SZ /f /d "C:\Windows\Temp\T1547001010"
mkdir C:\Windows\Temp\T1547001010