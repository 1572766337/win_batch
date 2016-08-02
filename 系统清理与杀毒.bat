@ECHO OFF
TITLE 系统处理
COLOR 71
ECHO 请选择功能（按回车确定）：
ECHO "1"清除系统垃圾文件
ECHO "2"显示当前目录下所有隐藏文件
ECHO "3"U盘杀毒
ECHO 其它键退出
SET /P psn=请输入数字键并按回车:
CLS
IF /I "%psn%"=="1" (
    GOTO 清除
) ELSE IF /I "%psn%"=="2" (
    GOTO 显示
) ELSE IF /I "%psn%"=="3" (
    GOTO KAV
) ELSE (
    GOTO EX
)
:清除
@ECHO OFF 
ECHO 正在清除系统垃圾文件，请稍等...... 
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /s /q %systemdrive%\recycled\*.* 
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp 
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
ECHO 清除系统完成！ 
ECHO. & pause
EXIT
:显示
REM 显示隐藏的文件
@ECHO OFF
ECHO 更改"%cd%\"下文件的所有属性(只读，存档，系统，隐藏):
ATTRIB -R -A -S -H "%CD%\*" /S /D
PAUSE
EXIT
:KAV
@echo off
::Author By ShengSen
title $$$$*毒霸整理*$$$$
color 17
echo.
echo ****************** 正在检测可移动磁盘，请稍候! *********************
echo.
del %temp%kv.tmp >nul
for %%i in (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q) do @fsutil fsinfo drivetype %%i: >>"%temp%kv.tmp"
findstr /i "可移动驱动器" "%temp%kv.tmp" >nul 2>nul
if errorlevel==1 goto error
if errorlevel==0 goto begin
:error
echo.
echo ********************* 没有检测到可移动磁盘! ***********************
echo.
goto end
:begin
for /f "tokens=1" %%j in ('findstr /i "可移动驱动器" "%temp%kv.tmp"') do (
cd /d %%j >nul 2>nul
set str=%%j
if not exist autorun.inf goto kvend
cd autorun.inf
cls
if errorlevel 1 goto kv
cd ..
echo.
echo *********** %%j盘已经被毒霸处理了，呵呵，病毒无法入侵! ***************
echo.
goto end
:kv
del /ashr autorun.inf >nul
del /ash autorun.inf >nul
del /ahr autorun.inf >nul
del /asr autorun.inf >nul
del /ah autorun.inf >nul
del /as autorun.inf >nul
del /ar autorun.inf >nul
del autorun.inf >nul
cls
echo 发现autorun病毒
echo 已清除autorun.inf
if not exist recycler goto sxs
echo 发现recycler病毒
rmdir /s /q recycler >nul
echo 已清除recycler目录
:sxs
if not exist sxs.exe goto kvend
del /ash sxs.exe >nul
::del /ashr sxs.exe >nul
echo 发现sxs病毒
echo 已清除sxs.exe病毒
:kvend
echo.
echo **************************** 杀毒完毕! *****************************
echo.
echo.
echo ************************ 正在开启防毒功能! *************************
echo.
md autorun.inf
attrib +h +r autorun.inf
cd autorun.inf
md autorun.inf
attrib +h +r autorun.inf
echo.
echo *********** %str%盘已经被毒霸处理过了，病毒无法入侵! ****************
echo.
)
:end
echo.
echo 请按任意键退出……
pause >nul 2>nul
EXIT

REM 退出
:EX
EXIT