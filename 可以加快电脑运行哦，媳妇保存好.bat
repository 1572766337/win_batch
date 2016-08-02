@echo off
title 系统处理
set /a rd=%random%%%5
if /i "%rd%"=="0" goto 1f
if /i "%rd%"=="1" goto 71
if /i "%rd%"=="2" goto 2f
if /i "%rd%"=="3" (
goto e0
)else goto 4e
:1f
color 1f
mode con cols=50 lines=21
goto main
:71
color 71
mode con cols=50 lines=21
goto main
:2f
color 2f
mode con cols=50 lines=21
goto main
:e0
color e0
mode con cols=50 lines=21
goto main
:4e
color 4e
mode con cols=50 lines=21
goto main
:main
cls
echo.
time /t
date /t
echo =================================================
echo +                《scy为scy制作》               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo +                       +                       +
echo +    a.系统垃圾清理     +    b.磁盘碎片整理     +
echo +	      ++++++++++++++++++++++            +
echo +	      +                    +            +
echo +++++++++++++++    e.退出程序      ++++++++++++++
echo +	      +                    +            +
echo +	      ++++++++++++++++++++++            +
echo + c.Internet临时文件删除+        d.其他         +
echo +                       +                       +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=输入选择：
cls
if /i "%a%"=="a" goto a
if /i "%a%"=="b" goto b
if /i "%a%"=="c" goto c
if /i "%a%"=="d" goto d
if /i "%a%"=="e" (
goto e
)else goto main
:a
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
ECHO.
ECHO 清除系统垃圾完成！
echo 按任意键返回&pause>nul
goto main
:b
:def
cls
echo.
time /t
date /t
echo =================================================
echo +                《scy为scy制作》               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                               +
echo +	           1.整理C盘                    +
echo +	           2.整理D盘                    +
echo +	           3.整理E盘                    +
echo +                  4.整理F盘                    +
echo +	           5.自定义                     +
echo +	           6.整理全部                   +
echo +	           7.返回                       +
echo +                                               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=输入选择：
cls
if "%a%"=="1" goto 1
if "%a%"=="2" goto 2
if "%a%"=="3" goto 3
if "%a%"=="4" goto 4
if "%a%"=="5" goto 5
if "%a%"=="6" goto 6
if "%a%"=="7" (
goto 7
)else goto def
:1
defrag C: /u /v
goto def
:2
defrag d: /u /v
goto def
:3
defrag e: /u /v
goto def
:4
defrag f: /u /v
goto def
:5
set /p a=输入自定义盘符：
if exist %a%: (
defrag %a%: /u /v
) else echo 	不存在此盘符！&pause>nul
goto def
:6
defrag c: /u /v
defrag d: /u /v
defrag e: /u /v
defrag f: /u /v
goto def
:7
goto main
:c
del /f /s /q /a "C:\Users\Administrator\AppData\Local\Microsoft\Windows\Temporary Internet Files"
echo.
ECHO 清除Internet临时文件完成！
echo 按任意键返回！&pause>nul
goto main
:d
cls
echo.
time /t
date /t
echo =================================================
echo +                《scy为scy制作》               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                               +
echo +	           z.注册表                     +
echo +	           m.开机配置                   +
echo +	           s.一键修复系统               +
echo +                  i.修复图标                   +
echo +	           r.重启桌面                   +
echo +	           w.给媳妇的寄语               +
echo +	           f.返回                       +
echo +                                               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=输入选择：
cls
if /i "%a%"=="z" goto z
if /i "%a%"=="m" goto m
if /i "%a%"=="s" goto s
if /i "%a%"=="i" goto i
if /i "%a%"=="r" goto r
if /i "%a%"=="w" goto w
if /i "%a%"=="f" (
goto f
)else goto d
:z
regedit
goto d
:m
msconfig
goto d
:s
sfc /scannow
goto d
:i
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del /f /q "%userprofile%\AppData\Local\iconcache.db"
start explorer
goto d
:r
taskkill/f /im explorer.exe
start explorer
goto d
:w
echo.
echo      媳妇，这都是专门为你做的，希望你喜欢，爱你，么么……
echo.
echo                 へ　　　　 ／│
echo          　 　/＼│　　　∠＿/
echo 　          /　│　　 ／　／
echo  　        │　Z ＿,＜　／　 　  /`ヽ
echo  　        │　　　　　ヽ　 　 /    〉
echo 　          Y　　　　　`　   /　　 /
echo  　       （●　、　●　） 〈　　/
echo  　        ()　 へ　　  │　 ＼〈
echo          　 \- -_　    / \   ／／
echo          　 / へ　　 /　/ │ ＼＼
echo         　 ヽ_/ 　　(_／　│ ／／
echo 　         　│　　　　　  │／
echo 　           /_―-￣￣`-―＿\
pause>nul
goto d
:f
goto main
:e
exit