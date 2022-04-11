@echo off
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon" /v "UserInit" /t REG_SZ /d C:\Windows\System32\Userinit.exe /f
del C:\Windows\Temp\T1547004001.exe