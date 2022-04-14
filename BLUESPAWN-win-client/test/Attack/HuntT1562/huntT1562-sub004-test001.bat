@echo off
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\AuthorizedApplications\List" /v C:\Windows\Temp\T1562004001.exe /t REG_SZ /d "" /f
echo "EVIL" >> C:\Windows\Temp\T1562004001.exe