@echo off
for /f "delims=.£¬" %%i in (test.txt) do echo %%i
pause