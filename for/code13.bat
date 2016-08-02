@echo off
for /f "delims=£¬ tokens=1,3-4,*" %%i in (test2.txt) do echo %%i %%j %%k %%l
pause