@echo off
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common Startup" /t REG_SZ /f /d "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
del /s /q C:\Windows\Temp\T1547001010