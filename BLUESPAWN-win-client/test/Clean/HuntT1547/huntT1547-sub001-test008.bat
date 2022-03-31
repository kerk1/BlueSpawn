@echo off
reg delete "HKLM\Software\Microsoft\Command Processor" /v "AutoRun" /f
del C:\Windows\Temp\T1547001008.exe