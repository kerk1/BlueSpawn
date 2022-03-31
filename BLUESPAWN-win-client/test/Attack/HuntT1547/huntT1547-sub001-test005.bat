@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceEx /v "T1547001005" /t REG_SZ /f /d "C:\Windows\Temp\T1547001005.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001005.exe