@echo off
set /p str=����������ƣ�
for %%i in (c d e f) do for /f "delims=" %%a in ('dir /s /b %%i:\%str%.exe') do if exist "%%a" (
start %%a)