@ECHO OFF
TITLE 缓存处理
COLOR 2f
ECHO 正在删除优酷本地缓存，请稍等......
echo.
del /f /s /q "%userprofile%\Appdata\Roaming\Macromedia\Flash Player\#SharedObjects\*.*"
del /f /s /q "D:\360\360Chrome\Chrome\User Data\Default\Pepper Data\Shockwave Flash\WritableRoot\#SharedObjects\*.*"
ECHO.
ECHO 已删除，稍后自动退出！
::echo.pause
choice /t 0 /d y /n
exit