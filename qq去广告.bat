@echo off
rd /s /q C:\Users\Administrator\AppData\Roaming\Tencent\QQ\Misc\com.tencent.advertisement
echo>>C:\Users\Administrator\AppData\Roaming\Tencent\QQ\Misc\com.tencent.advertisement
echo ��ȥ�����촰�����Ͻǹ�棡
set s=1572766337
set /p s=�������qq�ţ�Ĭ��157����
del /f /s /q C:\Users\Administrator\AppData\Roaming\Tencent\Users\%s%\QQ\Misc.db
md C:\Users\Administrator\AppData\Roaming\Tencent\Users\%s%\QQ\Misc.db
echo �ѽ���Misc.db�ļ��У�
set /p f=�Ƿ�ȥ��QQ�������ŵ����͹�棿��y/n��
if /i "%f%"=="y" (
echo #QQ�������ŵ���>>C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 adshmmsg.qq.com>>C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 adshmct.qq.com>>C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 fodder.qq.com>>C:\windows\system32\drivers\etc\hosts
) else exit
echo ��ȥ��
pause