@echo off
set num=0
::setlocal enabledelayedexpansion
for /f %%i in ('dir /a-d /b *.exe') do (
set /a num+=1
call echo num 当前的值是 %%num%%
)
echo 当前目录下共有 %num%个exe文件
dir /a-d /b *.txt|findstr "test">nul&&(
echo 存在含有 test 字符串的文本本件
)||echo 不存在含有 test 字符串的文本文件
if exist test.ini (
echo 存在 test.ini 文件
)else echo 不存在 test.ini 文件
pause