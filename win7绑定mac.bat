@echo off&cls
netsh i i show in
set /p Idx=����������Idx��&cls&echo.
ipconfig | find "Ĭ������"
set /p ip=����Ĭ������ip��&cls&echo.
ping %ip% -n 1>nul
arp -a | find "%ip%"
set /p mac=����Ĭ������mac��&cls&echo.
netsh  -c  i  i  add  neighbors %Idx% %ip% %mac%
arp -a | find "%ip%"
echo ��ʾ��ֱ�ӹرմ��ڻ���������&pause>nul
::netsh  i  i  reset
arp -d
pause
