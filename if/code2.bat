@echo off
if exist %cd% echo �ļ���%cd%�Ǵ��ڵģ�
if exist %0 echo �ļ�%0�Ǵ��ڵģ�
if not exist %~df0 (  
echo �ļ���%~df0�����ڣ�
) else echo �ļ���%~df0���ڣ�
pause>nul