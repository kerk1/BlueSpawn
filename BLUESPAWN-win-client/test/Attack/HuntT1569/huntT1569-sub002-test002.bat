@echo off
sc create 1569002002 binpath= "cmd.exe /c C:\Windows\Temp\T1569002002.exe"
echo "EVIL" >> C:\Windows\Temp\T1569002002.exe