@echo off
title ϵͳ����
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
echo +                ��scyΪscy������               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo +                       +                       +
echo +    a.ϵͳ��������     +    b.������Ƭ����     +
echo +	      ++++++++++++++++++++++            +
echo +	      +                    +            +
echo +++++++++++++++    e.�˳�����      ++++++++++++++
echo +	      +                    +            +
echo +	      ++++++++++++++++++++++            +
echo + c.Internet��ʱ�ļ�ɾ��+        d.����         +
echo +                       +                       +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=����ѡ��
cls
if /i "%a%"=="a" goto a
if /i "%a%"=="b" goto b
if /i "%a%"=="c" goto c
if /i "%a%"=="d" goto d
if /i "%a%"=="e" (
goto e
)else goto main
:a
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
ECHO.
ECHO ���ϵͳ������ɣ�
echo �����������&pause>nul
goto main
:b
:def
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
echo +	           7.����                       +
echo +                                               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=����ѡ��
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
set /p a=�����Զ����̷���
if exist %a%: (
defrag %a%: /u /v
) else echo 	�����ڴ��̷���&pause>nul
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
ECHO ���Internet��ʱ�ļ���ɣ�
echo ����������أ�&pause>nul
goto main
:d
cls
echo.
time /t
date /t
echo =================================================
echo +                ��scyΪscy������               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                               +
echo +	           z.ע���                     +
echo +	           m.��������                   +
echo +	           s.һ���޸�ϵͳ               +
echo +                  i.�޸�ͼ��                   +
echo +	           r.��������                   +
echo +	           w.��ϱ���ļ���               +
echo +	           f.����                       +
echo +                                               +
echo +++++++++++++++++++++++++++++++++++++++++++++++++
echo =================================================
set /p a=����ѡ��
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
echo      ϱ�����ⶼ��ר��Ϊ�����ģ�ϣ����ϲ�������㣬ôô����
echo.
echo                 �ء������� ����
echo          �� ��/�ܩ��������ϣ�/
echo ��          /�������� ������
echo  ��        ����Z ��,�������� ��  /`�c
echo  ��        �������������c�� �� /    ��
echo ��          Y����������`��   /���� /
echo  ��       ���񡡡����񡡣� ������/
echo  ��        ()�� �ء���  ���� �ܡ�
echo          �� \- -_��    / \   ����
echo          �� / �ء��� /��/ �� �ܣ�
echo         �� �c_/ ����(_������ ����
echo ��         ��������������  ����
echo ��           /_�D-����`-�D��\
pause>nul
goto d
:f
goto main
:e
exit