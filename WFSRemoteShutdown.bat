@echo off
REM # You must allow 'Everyone' to force the computer to shutdown in secpol.msc

:TOP

SET /p ans=Are you sure you want to shutdown the server? (y/n)

IF "%ans%" EQU "y" (
   GOTO shutdown
)
IF "%ans%" EQU "n" (
   GOTO no
)


:shutdown
   shutdown.exe /r /m \\WFSname /t 15

:no
   echo Ok. Keeping server online.
   exit 5

:END
