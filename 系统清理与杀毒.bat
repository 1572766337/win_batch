@ECHO OFF
TITLE ϵͳ����
COLOR 71
ECHO ��ѡ���ܣ����س�ȷ������
ECHO "1"���ϵͳ�����ļ�
ECHO "2"��ʾ��ǰĿ¼�����������ļ�
ECHO "3"U��ɱ��
ECHO �������˳�
SET /P psn=���������ּ������س�:
CLS
IF /I "%psn%"=="1" (
    GOTO ���
) ELSE IF /I "%psn%"=="2" (
    GOTO ��ʾ
) ELSE IF /I "%psn%"=="3" (
    GOTO KAV
) ELSE (
    GOTO EX
)
:���
@ECHO OFF 
ECHO �������ϵͳ�����ļ������Ե�...... 
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
ECHO ���ϵͳ��ɣ� 
ECHO. & pause
EXIT
:��ʾ
REM ��ʾ���ص��ļ�
@ECHO OFF
ECHO ����"%cd%\"���ļ�����������(ֻ�����浵��ϵͳ������):
ATTRIB -R -A -S -H "%CD%\*" /S /D
PAUSE
EXIT
:KAV
@echo off
::Author By ShengSen
title $$$$*��������*$$$$
color 17
echo.
echo ****************** ���ڼ����ƶ����̣����Ժ�! *********************
echo.
del %temp%kv.tmp >nul
for %%i in (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q) do @fsutil fsinfo drivetype %%i: >>"%temp%kv.tmp"
findstr /i "���ƶ�������" "%temp%kv.tmp" >nul 2>nul
if errorlevel==1 goto error
if errorlevel==0 goto begin
:error
echo.
echo ********************* û�м�⵽���ƶ�����! ***********************
echo.
goto end
:begin
for /f "tokens=1" %%j in ('findstr /i "���ƶ�������" "%temp%kv.tmp"') do (
cd /d %%j >nul 2>nul
set str=%%j
if not exist autorun.inf goto kvend
cd autorun.inf
cls
if errorlevel 1 goto kv
cd ..
echo.
echo *********** %%j���Ѿ������Դ����ˣ��Ǻǣ������޷�����! ***************
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
echo ����autorun����
echo �����autorun.inf
if not exist recycler goto sxs
echo ����recycler����
rmdir /s /q recycler >nul
echo �����recyclerĿ¼
:sxs
if not exist sxs.exe goto kvend
del /ash sxs.exe >nul
::del /ashr sxs.exe >nul
echo ����sxs����
echo �����sxs.exe����
:kvend
echo.
echo **************************** ɱ�����! *****************************
echo.
echo.
echo ************************ ���ڿ�����������! *************************
echo.
md autorun.inf
attrib +h +r autorun.inf
cd autorun.inf
md autorun.inf
attrib +h +r autorun.inf
echo.
echo *********** %str%���Ѿ������Դ�����ˣ������޷�����! ****************
echo.
)
:end
echo.
echo �밴������˳�����
pause >nul 2>nul
EXIT

REM �˳�
:EX
EXIT