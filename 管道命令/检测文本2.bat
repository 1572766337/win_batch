@echo off
set /p n=����Ҫ���ҵ��ַ�����
type *.*|findstr "%n%"&&(
echo �����ַ���%n%
)||echo �������ַ���%n%
pause>nul