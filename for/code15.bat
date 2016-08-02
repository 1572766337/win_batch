@echo off
for /f %%i in ('dir /a-d /b *test*.txt') do echo %%i
pause