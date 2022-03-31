@echo off
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Startup" /t REG_SZ /f /d "%%USERPROFILE%%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
del /s /q C:\Windows\Temp\T1547001009