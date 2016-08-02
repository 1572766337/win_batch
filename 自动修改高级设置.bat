@echo off
echo Windows Registry Editor Version 5.00>%temp%\advance.reg
echo.>>%temp%\advance.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>%temp%\advance.reg
echo "Hidden"=dword:00000001>>%temp%\advance.reg
echo "ShowCompColor"=dword:00000001>>%temp%\advance.reg
echo "HideFileExt"=dword:00000000>>%temp%\advance.reg
echo "DontPrettyPath"=dword:00000000>>%temp%\advance.reg
echo "ShowInfoTip"=dword:00000001>>%temp%\advance.reg
echo "HideIcons"=dword:00000000>>%temp%\advance.reg
echo "MapNetDrvBtn"=dword:00000000>>%temp%\advance.reg
echo "WebView"=dword:00000001>>%temp%\advance.reg
echo "Filter"=dword:00000000>>%temp%\advance.reg
echo "SuperHidden"=dword:00000001>>%temp%\advance.reg
echo "SeparateProcess"=dword:00000000>>%temp%\advance.reg
echo "AutoCheckSelect"=dword:00000000>>%temp%\advance.reg
echo "IconsOnly"=dword:00000000>>%temp%\advance.reg
echo "ShowTypeOverlay"=dword:00000001>>%temp%\advance.reg
echo "ServerAdminUI"=dword:00000000>>%temp%\advance.reg
echo "ShowSuperHidden"=dword:00000000>>%temp%\advance.reg
echo "StartMenuInit"=dword:00000004>>%temp%\advance.reg
echo "TaskbarSizeMove"=dword:00000000>>%temp%\advance.reg
echo "DisablePreviewDesktop"=dword:00000001>>%temp%\advance.reg
echo "TaskbarSmallIcons"=dword:00000000>>%temp%\advance.reg
echo "TaskbarGlomLevel"=dword:00000001>>%temp%\advance.reg
echo "Start_ShowMyPics"=dword:00000000>>%temp%\advance.reg
echo "Start_ShowMyDocs"=dword:00000000>>%temp%\advance.reg
echo "Start_ShowMyMusic"=dword:00000000>>%temp%\advance.reg
echo "Start_ShowMyGames"=dword:00000000>>%temp%\advance.reg
echo "Start_MinMFU"=dword:0000000a>>%temp%\advance.reg
echo "Start_JumpListItems"=dword:0000000a>>%temp%\advance.reg
echo "Start_AdminToolsRoot"=dword:00000000>>%temp%\advance.reg
echo "StartMenuAdminTools"=dword:00000000>>%temp%\advance.reg
echo "Start_PowerButtonAction"=dword:00000002>>%temp%\advance.reg
echo "TaskbarAnimations"=dword:00000000>>%temp%\advance.reg
echo "ListviewAlphaSelect"=dword:00000000>>%temp%\advance.reg
echo "ListviewShadow"=dword:00000000>>%temp%\advance.reg
echo "Start_ShowHomegroup"=dword:00000000>>%temp%\advance.reg
echo "Start_ShowRun"=dword:00000000>>%temp%\advance.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor]>>%temp%\advance.reg
echo "AutoRun"="cd desktop">>%temp%\advance.reg
regedit %temp%\advance.reg
del /f /q %temp%\advance.reg
taskkill /f /im explorer.exe
start explorer.exe
exit