@echo off
set /p a=输入要运算的次数:
set /a t=a-1
set /a n=2
set /a s=1
:1
set /a s*=n
set /a n+=1
set /a t-=1
if %t% leq 0 goto 2 
goto 1
:2
echo %s%
pause
