@echo off
reg delete "HKCU\Control Panel\Desktop" /v SCRNSAVE.exe /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaveActive /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_DWORD /d 1 /f