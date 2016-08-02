@echo off&color 1f&mode con cols=50 lines=20
cd\&c:
cd windows
echo.&echo 请选择：
echo.&echo 	1.设置跳过开始菜单，启动到桌面
echo.&echo 	2.恢复所有设置，启动到开始菜单
echo.
set /p a=请输入您的选择：
cls
if "%a%"=="1" goto skip
if "%a%"=="2" goto del

:skip
echo.&echo 正在建立跳过文件……
echo @echo off>skipmetro.bat
echo if "%%1"=="h" goto begin>>skipmetro.bat
echo start mshta vbscript:createobject("wscript.shell").run("""%%~nx0"" h",0)(window.close)^&^&exit>>skipmetro.bat
echo :begin>>skipmetro.bat
echo ping -n 2 127.1 ^>nul>>skipmetro.bat
echo start explorer>>skipmetro.bat
echo ping -n 1 127.1 ^>nul>>skipmetro.bat
echo start gb.vbs>>skipmetro.bat
echo exit>>skipmetro.bat
attrib +s +h skipmetro.bat
echo Set ws= CreateObject("Wscript.Shell")>gb.vbs
echo wscript.sleep 500>>gb.vbs
echo ws.sendkeys "%%{F4}">>gb.vbs
attrib +s +h gb.vbs
echo.&echo 正在更改注册表项……&echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /d C:\Windows\system32\userinit.exe,skipmetro.bat /t reg_sz /f
echo.&echo 已完成！按任意键关闭！&pause>nul&exit

:del
echo.&echo 正在删除跳过文件……
del /a /f /q skipmetro.bat
del /a /f /q gb.vbs
echo.&echo 正在恢复注册表项……&echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /d C:\Windows\system32\userinit.exe /t reg_sz /f
echo.&echo 已完成！按任意键关闭！&pause>nul