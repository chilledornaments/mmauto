@echo off
REM # You must allow 'Everyone' to force the computer to shutdown in secpol.msc
shutdown.exe /s /m \\WFSNAME /t 15
exit 15
