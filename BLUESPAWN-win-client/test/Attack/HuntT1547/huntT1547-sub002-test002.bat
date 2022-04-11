@echo off
reg add HKLM\SYSTEM\CurrentControlSet\Control\LsaExtensionConfig\T1547002002 /v "Extensions" /t REG_MULTI_SZ /d T1547002002.dll /f
echo "EVIL" >> C:\Windows\System32\T1547002002.dll