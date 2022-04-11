@echo off
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v "Shell" /t REG_SZ /d explorer.exe /f
del C:\Windows\System32\T1547004002.exe