@echo off
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\EvilPrinter"  /f
del C:\Windows\Temp\T1068001.dll