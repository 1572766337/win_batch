@echo off
echo Windows Registry Editor Version 5.00>%temp%\NoChangeStartMenu.reg
echo.>>%temp%\NoChangeStartMenu.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%temp%\NoChangeStartMenu.reg
echo "NoChangeStartMenu"=dword:00000001>>%temp%\NoChangeStartMenu.reg
echo.>>%temp%\NoChangeStartMenu.reg
%temp%\NoChangeStartMenu.reg
taskkill /f /im explorer.exe
start explorer.exe
