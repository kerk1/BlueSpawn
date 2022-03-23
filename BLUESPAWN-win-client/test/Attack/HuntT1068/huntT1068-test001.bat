@echo off
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\EvilPrinter" /v "Port" /t REG_SZ /f /d "C:\Windows\Temp\T1068001.dll"
echo "EVIL" >> C:\Windows\Temp\T1068001.dll