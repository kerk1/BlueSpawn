@echo off
FOR /F "tokens=4,5*" %%a in ('reg query HKLM\SYSTEM\CurrentControlSet\Control\LSA /v "Authentication Packages"') do FOR /F "tokens=1,2* delims=\0" %%b in ('echo %%a') do reg add HKLM\SYSTEM\CurrentControlSet\Control\LSA /v "Authentication Packages" /t REG_MULTI_SZ /d %%b0 /f
del C:\Windows\System32\T1547002001.dll