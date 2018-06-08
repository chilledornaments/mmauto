REM run off USB
REM Map WFS storage dir to U: on local computer first
for /R  U:\ %%f in (*.json) do copy %%f "%~d0"
for /R  U:\ %%f in (*.jpg) do copy %%f "%~d0"
for /R  U:\ %%f in (*.jar) do copy %%f "%~d0"
