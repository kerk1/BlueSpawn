@echo off
sc create 1569002003 binpath= "cmd.exe"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\1569002003\Parameters" /v ServiceDll /d C:\Windows\Temp\T1569002003.dll /t REG_SZ /f
echo "EVIL" >> C:\Windows\Temp\T1569002003.dll