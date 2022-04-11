@echo off
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\T1547003001 /f
del C:\Windows\Temp\T1547003001.dll