@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v "T1547001001" /f
del C:\Windows\Temp\T1547001001.exe