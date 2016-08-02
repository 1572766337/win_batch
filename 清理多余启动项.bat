@REM 清除所有多余的启动项目
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg" /f

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MenuExt" /va /f
del "C:\Documents and Settings\All Users\「开始」菜单\程序\启动\*.lnk" /q
del "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.lnk" /q
del "C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.exe" /q
:ifin 
if exist "C:\Program Files\Windows Sidebar\sidebar.exe" ( 
regedit /s "C:\Program Files\Soft\files\reg\win7_r.reg"
regedit /s "files\reg\win7_r.reg"
) else ( 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v ctfmon.exe /d C:\WINDOWS\system32\ctfmon.exe
exit 
) 
exit 

