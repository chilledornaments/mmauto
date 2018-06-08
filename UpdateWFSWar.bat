@echo off
REM run off of USB
REM run as admin
REM quote the filepath
copy "*.war" "%~1\updates\"
call "%~1\setup.bat" UPDATE
