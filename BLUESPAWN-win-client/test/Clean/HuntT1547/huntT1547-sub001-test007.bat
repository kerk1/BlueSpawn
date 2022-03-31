@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v "T1547001007" /f
del C:\Windows\Temp\T1547001007.exe