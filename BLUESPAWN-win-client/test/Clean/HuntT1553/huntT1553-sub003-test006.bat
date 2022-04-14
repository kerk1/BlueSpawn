@echo off
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{000C10F1-0000-0000-C000-155300300646}" /f
del C:\Windows\Temp\T1553003006.dll