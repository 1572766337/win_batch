@echo off
title ������Ƭ����
color 1f
mode con cols=50 lines=21
:main
cls
echo.
time /t
date /t
echo =================================================
echo +                ��scyΪscy������               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                               +
echo +	           1.����C��                    +
echo +	           2.����D��                    +
echo +	           3.����E��                    +
echo +                  4.����F��                    +
echo +	           5.�Զ���                     +
echo +	           6.����ȫ��                   +
echo +	           7.�˳�                       +
echo +                                               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=����ѡ��
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
echo ������ϣ�����������أ�&pause>nul
goto main
:2
defrag d: /u
echo ������ϣ�����������أ�&pause>nul
goto main
:3
defrag e: /u
echo ������ϣ�����������أ�&pause>nul
goto main
:4
defrag f: /u
echo ������ϣ�����������أ�&pause>nul
goto main
:5
set /p a=�����Զ����̷���
if exist %a%: (
defrag %a%: /u
) else echo 	�����ڴ��̷���&pause>nul
goto main
:6
defrag c: /u
defrag d: /u
defrag e: /u
defrag f: /u
goto main
:7
exit