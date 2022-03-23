@echo off
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Ports" /v "C:\Windows\Temp\T1068002.dll" /f
del C:\Windows\Temp\T1068002.dll