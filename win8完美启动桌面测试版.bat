@echo off&color 1f&mode con cols=50 lines=20
cd\&c:
cd windows
echo.&echo ��ѡ��
echo.&echo 	1.����������ʼ�˵�������������
echo.&echo 	2.�ָ��������ã���������ʼ�˵�
echo.
set /p a=����������ѡ��
cls
if "%a%"=="1" goto skip
if "%a%"=="2" goto del

:skip
echo.&echo ���ڽ��������ļ�����
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
echo.&echo ���ڸ���ע������&echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /d C:\Windows\system32\userinit.exe,skipmetro.bat /t reg_sz /f
echo.&echo ����ɣ���������رգ�&pause>nul&exit

:del
echo.&echo ����ɾ�������ļ�����
del /a /f /q skipmetro.bat
del /a /f /q gb.vbs
echo.&echo ���ڻָ�ע������&echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /d C:\Windows\system32\userinit.exe /t reg_sz /f
echo.&echo ����ɣ���������رգ�&pause>nul