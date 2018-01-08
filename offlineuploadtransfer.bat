for /R  U:\ %%f in (*.json) do copy %%f "%~d0"
for /R  U:\ %%f in (*.jpg) do copy %%f "%~d0"
for /R  U:\ %%f in (*.jar) do copy %%f "%~d0"
