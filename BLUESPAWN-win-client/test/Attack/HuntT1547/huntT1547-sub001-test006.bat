@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceServicesEx /v "T1547001006" /t REG_SZ /f /d "C:\Windows\Temp\T1547001006.exe"
echo "EVIL" >> C:\Windows\Temp\T1547001006.exe