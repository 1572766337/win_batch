@echo off
set str1=abcd1233
set str2=ABCD1234
if %str1% == %str2% (echo �ַ�����ͬ��) else (echo �ַ�������ͬ��)
if /i %str1% LSS %str2% (echo str1^<str2) else (echo str1^>=str2)
echo.
set /p choice=�Ƿ���ʾ��ǰʱ�䣿(y/n)
if /i not %choice% EQU n echo ��ǰʱ���ǣ�%date% %time%
pause>nul