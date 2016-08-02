@echo off
:1
set /p a=输入要运算的次数:
set /a t=a-1
set /a n=2
set /a s=1
:2
set /a s+=n
set /a n+=1
set /a t-=1
if %t% leq 0 goto 3
goto 2
:3
echo %s%
pause
cls
echo 按“0”返回，按其它退出。
set /p psn=请选择：
cls
IF /I "%psn%"=="0" (
	goto 1
) else (
	goto 4
)
:4
exit