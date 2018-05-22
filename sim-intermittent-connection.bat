@echo off
:loop
ipconfig /release
sleep 180
ipconfig /renew
goto loop
