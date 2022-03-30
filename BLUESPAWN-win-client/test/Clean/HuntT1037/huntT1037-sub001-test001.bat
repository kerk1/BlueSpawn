@echo off
reg delete HKCU\Environment /v "UserInitMprLogonScript" /f
del C:\Windows\Temp\T1037001001.dll