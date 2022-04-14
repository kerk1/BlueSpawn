@echo off
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\AuthorizedApplications" /f
del C:\Windows\Temp\T1562004001.exe