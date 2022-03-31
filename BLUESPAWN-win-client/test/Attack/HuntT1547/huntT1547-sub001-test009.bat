@echo off
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Startup" /t REG_SZ /f /d "C:\Windows\Temp\T1547001009"
mkdir C:\Windows\Temp\T1547001009