@echo off
reg add "HKLM\Software\Microsoft\Command Processor" /v "AutoRun" /t REG_SZ /f /d "C:\Windows\Temp\T1547001008.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001008.exe