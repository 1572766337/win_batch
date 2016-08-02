@echo off
for /f "delims=£¬ tokens=1,*" %%i in (test2.txt) do echo %%i %%j
pause