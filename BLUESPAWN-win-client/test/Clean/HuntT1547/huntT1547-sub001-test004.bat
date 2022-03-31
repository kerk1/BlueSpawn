@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceServices /v "T1547001004" /f
del C:\Windows\Temp\T1547001004.exe