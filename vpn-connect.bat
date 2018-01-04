@echo off
:connect

REM You need to have already established this VPN connection
REM This is used to connect VMs to VPN after reboot

set myvpnname=""
set myusername=""
set mypassword=""

rasdial %myvpnname% %myusername% %mypassword%
timeout 5
goto DONE

:done
@echo on
