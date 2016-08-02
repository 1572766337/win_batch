@echo off
for /f "delims=£¬ tokens=1,2,3,4,5" %%i in (test2.txt) do echo %%i ¡°%%j¡± %%k %%l %%m
pause