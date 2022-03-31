@echo off
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices /v "T1547001003" /f
del C:\Windows\Temp\T1547001003.exe