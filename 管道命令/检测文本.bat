@echo off
set /p m=����Ҫ���ҵ��ļ���
set /p n=����Ҫ���ҵ��ַ�����
type %m%.*|findstr "%n%"&&(
echo.&echo.&echo �����ַ���%n%
)||(echo.&echo.&echo �������ַ���%n%)
pause>nul