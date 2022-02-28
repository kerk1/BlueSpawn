@echo off
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\InstalledSdb" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Custom" /f