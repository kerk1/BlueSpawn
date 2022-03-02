@echo off
reg delete "HKCU\SOFTWARE\Classes\CLSID\{12345678-9ABC-DEF0-1234-56789ABCDEF0}" /f
del C:\Windows\System32\1546015001.dll