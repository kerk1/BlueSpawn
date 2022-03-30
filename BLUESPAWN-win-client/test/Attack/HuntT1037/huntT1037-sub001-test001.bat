@echo off
reg add HKCU\Environment /v "UserInitMprLogonScript" /t REG_SZ /f /d "C:\Windows\Temp\T1037001001.dll"
echo "EVIL" >> C:\Windows\Temp\T1037001001.dll