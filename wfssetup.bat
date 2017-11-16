@echo off
diskpart /s "C:\users\synertia\desktop\diskpart.txt"

timeout 5

md w:\workflowserver
timeout 2
md w:\workflowserver\storage

wmic useraccount where "name='Synertia'" SET passwordexpires=false
wmic useraccount where "name='User'" SET passwordexpires=false

copy "C:\MagicMemories\6 - Role Software\Server\Workflow Server\workflowserver-installer-1.3.0-Build-2017-02-02_20_30.zip" "W:\"

gpedit.msc

echo "Turn off Cortana: Navigate to Computer Configuration > Administrative Templates > Windows Components > Search. Locate the “Allow Cortana” setting in the right pane and double-click it and disable it"
