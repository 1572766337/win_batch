@echo off
set str1=abcd1233
set str2=ABCD1234
if %str1% == %str2% (echo 字符串相同！) else (echo 字符串不相同！)
if /i %str1% LSS %str2% (echo str1^<str2) else (echo str1^>=str2)
echo.
set /p choice=是否显示当前时间？(y/n)
if /i not %choice% EQU n echo 当前时间是：%date% %time%
pause>nul