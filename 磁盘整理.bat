@echo off
title 磁盘碎片整理
color 1f
mode con cols=50 lines=21
:main
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
echo +	           7.退出                       +
echo +                                               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=输入选择：
cls
if "%a%"=="1" (
goto 1
)else if "%a%"=="2" (
goto 2
)else if "%a%"=="3" (
goto 3
)else if "%a%"=="4" (
goto 4
)else if "%a%"=="5" (
goto 5
)else if "%a%"=="6" (
goto 6
)else if "%a%"=="7" (
goto 7
)else goto main
:1
defrag C: /u
echo 整理完毕，按任意键返回！&pause>nul
goto main
:2
defrag d: /u
echo 整理完毕，按任意键返回！&pause>nul
goto main
:3
defrag e: /u
echo 整理完毕，按任意键返回！&pause>nul
goto main
:4
defrag f: /u
echo 整理完毕，按任意键返回！&pause>nul
goto main
:5
set /p a=输入自定义盘符：
if exist %a%: (
defrag %a%: /u
) else echo 	不存在此盘符！&pause>nul
goto main
:6
defrag c: /u
defrag d: /u
defrag e: /u
defrag f: /u
goto main
:7
exit