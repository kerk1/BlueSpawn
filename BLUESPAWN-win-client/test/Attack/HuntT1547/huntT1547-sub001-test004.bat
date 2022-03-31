@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceServices /v "T1547001004" /t REG_SZ /f /d "C:\Windows\Temp\T1547001004.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001004.exe