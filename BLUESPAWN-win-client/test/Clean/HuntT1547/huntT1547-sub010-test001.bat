@echo off
reg delete "HKLM\System\CurrentControlSet\Control\Print\Monitors\T1547010001" /f
del C:\Windows\System32\T1547010001.dll