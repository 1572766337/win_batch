@echo off
echo 本文件夹里面的文件、文件夹有：
for /f  %%a in ('dir /b /o') do echo %%a
pause