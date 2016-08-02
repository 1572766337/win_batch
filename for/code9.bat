@echo off
for /f "delims=£¬ tokens=2,5" %%i in (test2.txt) do echo %%i
pause