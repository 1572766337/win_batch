@echo off
for /f "delims=£¬ tokens=3" %%i in (test2.txt) do echo %%i
pause