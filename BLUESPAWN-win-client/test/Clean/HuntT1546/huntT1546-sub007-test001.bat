@echo off
reg delete "HKLM\Software\Microsoft\NetSh" /v evil /f
del C:\Windows\System32\evil.dll