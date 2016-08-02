@echo off
set sum=0
set /p n= ‰»În£∫
for /l %%i in (1,1,%n%) do (
set /a sum+=%%i
)
echo sum=%sum%
pause