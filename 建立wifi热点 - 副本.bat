@echo off&color 1f
echo.&echo ��ѡ��	
echo.&echo 	1.����������
echo.&echo 	2.��������
echo.&echo 	3.ɾ������
echo.
set /p x=ѡ��
cls
if /i "%x%"=="1" goto 1
if /i "%x%"=="2" goto 2
if /i "%x%"=="3" goto 3
:1
echo.
set /p a=�����������ƣ�
echo.
set /p b=�������룺
netsh wlan set hostednetwork mode=allow ssid=%a% key=%b%
netsh wlan start hostednetwork
echo.&echo ������ʾ�жϽ����Ƿ�ɹ�
pause
exit
:2
netsh wlan start hostednetwork
echo.&echo �Ѵ�
pause
exit
:3
netsh wlan set hostednetwork mode=disallow
pause