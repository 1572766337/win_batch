@echo off
set str=c d e f g h i j k l m n o p q r s t u v w x y z
echo 当前硬盘的分区有：
for %%i in (%str%) do if exist %%i: echo %%i:
pause