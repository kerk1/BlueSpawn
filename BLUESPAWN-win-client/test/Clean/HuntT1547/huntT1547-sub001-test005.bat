@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceEx /v "T1547001005" /f
del C:\Windows\Temp\T1547001005.exe