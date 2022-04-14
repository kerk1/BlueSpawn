@echo off
reg delete "HKLM\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-155300300346}" /f
del C:\Windows\Temp\T1553003003.dll