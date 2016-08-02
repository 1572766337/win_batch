@echo off
if exist %cd% echo 文件夹%cd%是存在的！
if exist %0 echo 文件%0是存在的！
if not exist %~df0 (  
echo 文件夹%~df0不存在！
) else echo 文件夹%~df0存在！
pause>nul