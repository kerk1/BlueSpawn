@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce /v "T1547001002" /f
del C:\Windows\Temp\T1547001002.exe