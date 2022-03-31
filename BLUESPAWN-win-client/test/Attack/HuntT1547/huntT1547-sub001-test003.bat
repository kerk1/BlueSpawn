@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices /v "T1547001003" /t REG_SZ /f /d "C:\Windows\Temp\T1547001003.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001003.exe