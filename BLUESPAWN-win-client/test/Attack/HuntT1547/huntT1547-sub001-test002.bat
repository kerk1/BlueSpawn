@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce /v "T1547001002" /t REG_SZ /f /d "C:\Windows\Temp\T1547001002.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001002.exe