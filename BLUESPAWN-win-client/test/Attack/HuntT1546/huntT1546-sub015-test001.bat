@echo off
reg add "HKCU\SOFTWARE\Classes\CLSID\{12345678-9ABC-DEF0-1234-56789ABCDEF0}\InprocHandler32" /t REG_SZ /d "C:\Windows\System32\1546015001.dll" /f
echo "Hello World!" >> C:\Windows\System32\1546015001.dll