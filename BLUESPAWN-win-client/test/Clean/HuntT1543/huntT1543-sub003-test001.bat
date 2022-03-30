@echo off
reg delete HKLM\System\CurrentControlSet\Services\DNS\Parameters /v "ServerLevelPluginDll" /f
del C:\Windows\Temp\T1543003001.dll