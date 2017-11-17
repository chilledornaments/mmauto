@echo off

:top

:phoenix
echo Starting Cleanup
timeout /t 5
echo Looking for Phoenix
timeout /t 3
wmic product where name="Phoenix" call uninstall /nointeractive
echo Done. Moving on.
goto phoenixstorage

:phoenixstorage
echo Checking for Phoenix storage
timeout /t 5
if exist "C:\programdata\phoenix" (
  echo Found Phoenix storage. Cleaning up.
  timeout /t 5
  rd /S /Q "C:\programdata\phoenix"
  echo Checking for CaptureMagic
  goto capture
 ) else (
  echo No Phoenix storage found. Moving on
  goto capture
)

:capture
echo Looking for CaptureMagic install
wmic product where name="CaptureMagic" call uninstall /nointeractive
echo Done. Moving on.
timeout /t 5
goto importmagic

:importmagic
echo Checking for ImportMagic install
wmic product where name="ImportMagic" call uninstall /nointeractive
echo Cleaning up ImportMagic install directory
if exist "C:\Program Files (x86)\MagicMemories" (
  rd /S /Q "C:\Program Files (x86)\MagicMemories"
  rd /S /Q "C:\programdata\MagicMemories"
  echo Done. Moving on.
) else (
  echo No directories found. Moving on.
  timeout /t 5
  goto installdir
)
REM This cleans up install _and_ programdata directories
timeout /t 5
goto installdir

:installdir
echo Cleaning up install directory
timeout /t 5
if exist "C:\Program Files (x86)\Magic Memories" (
  rd /S /Q "C:\Program Files (x86)\Magic Memories"
  echo Install directory cleaned. Moving on.
  timeout /t 5
  goto chrome
 ) else (
  echo Nothing found. Moving on.
  goto chrome
)

:chrome
echo Cleaning up Chrome history.
timeout /t 5
if exist "C:\Users\User\AppData\Local\Google\Chrome" (
  rd /S /Q "C:\Users\User\AppData\Local\Google\Chrome"
  echo Chrome history cleaned. Moving on.
  timeout /t 5
  goto newname
) else (
  echo No Chrome history found. Moving on.
  timeout /t 5
  goto newname
)

:newname
SET /p ans=Would you like to rename this computer? (y/n):
if "%ans%" EQU "n" (
  echo Ok. Have a nice day.
  timeout /t 3
  exit 0
)

if "%ans%" EQU "y" (
  goto finalizerename
)

:finalizerename
SET /p name=What is the computer's new name?:
echo Ok. Renaming to %name%
wmic computersystem where name="%computername%" call rename name="%name%"
echo Restarting in 15 seconds
timeout /t 5
shutdown.exe /r /t 10

:end
