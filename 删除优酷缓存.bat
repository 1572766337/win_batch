@ECHO OFF
TITLE ���洦��
COLOR 2f
ECHO ����ɾ���ſ᱾�ػ��棬���Ե�......
echo.
del /f /s /q "%userprofile%\Appdata\Roaming\Macromedia\Flash Player\#SharedObjects\*.*"
del /f /s /q "D:\360\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects\*.*"
ECHO.
ECHO ��ɾ�����Ժ��Զ��˳���
::echo.pause
choice /t 0 /d y /n
exit