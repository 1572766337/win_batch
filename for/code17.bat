@echo off
set num=0
::setlocal enabledelayedexpansion
for /f %%i in ('dir /a-d /b *.exe') do (
set /a num+=1
call echo num ��ǰ��ֵ�� %%num%%
)
echo ��ǰĿ¼�¹��� %num%��exe�ļ�
dir /a-d /b *.txt|findstr "test">nul&&(
echo ���ں��� test �ַ������ı�����
)||echo �����ں��� test �ַ������ı��ļ�
if exist test.ini (
echo ���� test.ini �ļ�
)else echo ������ test.ini �ļ�
pause