@echo off
set /p m=输入要查找的文件：
set /p n=输入要查找的字符串：
type %m%.*|findstr "%n%"&&(
echo.&echo.&echo 存在字符串%n%
)||(echo.&echo.&echo 不存在字符串%n%)
pause>nul