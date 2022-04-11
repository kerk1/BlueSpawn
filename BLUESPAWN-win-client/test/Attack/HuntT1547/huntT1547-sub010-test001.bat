@echo off
reg add "HKLM\System\CurrentControlSet\Control\Print\Monitors\T1547010001" /v "Driver" /t REG_SZ /d T1547010001.dll /f
echo "EVIL" >> C:\Windows\System32\T1547010001.dll