@echo off
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile\GloballyOpenPorts\List" /v 1562 /t REG_SZ /d "" /f