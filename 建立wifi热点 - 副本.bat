@echo off&color 1f
echo.&echo 请选择：	
echo.&echo 	1.建立新无线
echo.&echo 	2.启动无线
echo.&echo 	3.删除无线
echo.
set /p x=选择：
cls
if /i "%x%"=="1" goto 1
if /i "%x%"=="2" goto 2
if /i "%x%"=="3" goto 3
:1
echo.
set /p a=输入无线名称：
echo.
set /p b=输入密码：
netsh wlan set hostednetwork mode=allow ssid=%a% key=%b%
netsh wlan start hostednetwork
echo.&echo 根据显示判断建立是否成功
pause
exit
:2
netsh wlan start hostednetwork
echo.&echo 已打开
pause
exit
:3
netsh wlan set hostednetwork mode=disallow
pause