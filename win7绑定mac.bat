@echo off&cls
netsh i i show in
set /p Idx=输入联网的Idx：&cls&echo.
ipconfig | find "默认网关"
set /p ip=输入默认网关ip：&cls&echo.
ping %ip% -n 1>nul
arp -a | find "%ip%"
set /p mac=输入默认网关mac：&cls&echo.
netsh  -c  i  i  add  neighbors %Idx% %ip% %mac%
arp -a | find "%ip%"
echo 提示：直接关闭窗口或按任意键解绑&pause>nul
::netsh  i  i  reset
arp -d
pause
