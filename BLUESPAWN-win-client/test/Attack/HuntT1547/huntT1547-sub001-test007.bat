@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v "T1547001007" /t REG_SZ /f /d "C:\Windows\Temp\T1547001007.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001007.exe