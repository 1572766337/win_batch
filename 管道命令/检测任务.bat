@echo off
set /p str=����Ҫ���ĳ����к��е��ַ�����
tasklist|findstr "%str%"&&(
echo ���ں��� %str% �ַ����ĳ���
)||echo �����ں��� %str% �ַ����ĳ���
pause>nul