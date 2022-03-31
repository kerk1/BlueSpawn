@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v "T1547001001" /t REG_SZ /f /d "C:\Windows\Temp\T1547001001.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001001.exe