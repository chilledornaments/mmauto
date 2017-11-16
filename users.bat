"%ProgramFiles(x86)%\Symantec\Symantec Endpoint Protection\smc.exe" -p [pw] -stop

net user /add User [pw]
net user /add Synertia [pw]
net user Sharpshooter /active:no

wmic useraccount where "name='Synertia'" SET passwordexpires=false
wmic useraccount where "name='User'" SET passwordexpires=false

net localgroup administrators User /add
net localgroup administrators Synertia /add

"%ProgramFiles(x86)%\Symantec\Symantec Endpoint Protection\smc.exe" -p [pw] -start
