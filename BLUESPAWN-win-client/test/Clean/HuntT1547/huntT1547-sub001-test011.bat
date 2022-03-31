@echo off
reg delete "HKCR\CLSID\{16d12736-7a9e-4765-bec6-f301d679caaa}" /f
del C:\Windows\System32\rover.dll