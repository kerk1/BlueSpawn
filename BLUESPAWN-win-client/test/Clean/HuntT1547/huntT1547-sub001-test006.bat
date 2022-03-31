@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceServicesEx /v "T1547001006" /f
del C:\Windows\Temp\T1547001006.exe