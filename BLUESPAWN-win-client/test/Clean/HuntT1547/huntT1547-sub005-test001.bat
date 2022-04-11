@echo off
reg add HKLM\SYSTEM\CurrentControlSet\Control\LSA /v "Security Packages" /t REG_MULTI_SZ /d "" /f
del C:\Windows\System32\T1547005001.dll