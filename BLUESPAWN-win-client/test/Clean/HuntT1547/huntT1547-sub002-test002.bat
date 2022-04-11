@echo off
reg delete HKLM\SYSTEM\CurrentControlSet\Control\LsaExtensionConfig\T1547002002 /f
del C:\Windows\System32\T1547002002.dll