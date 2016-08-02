@echo off
set result=1
set /p n=«Î ‰»În£∫
for /l %%i in (2,1,%n%) do (
set /a result*=%%i
)
echo result=%result%
pause