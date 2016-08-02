@echo off
set /p str=输入要检测的程序中含有的字符串：
tasklist|findstr "%str%"&&(
echo 存在含有 %str% 字符串的程序
)||echo 不存在含有 %str% 字符串的程序
pause>nul