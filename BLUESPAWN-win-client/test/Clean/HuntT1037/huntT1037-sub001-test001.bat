@echo off
reg delete HKCU\Environment /v "UserInitMprLogonScript" /f
del C:\Windows\Temp\evil.dll