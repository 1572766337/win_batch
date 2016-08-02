@echo off
rd /s /q C:\Users\Administrator\AppData\Roaming\Tencent\QQ\Misc\com.tencent.advertisement
echo>>C:\Users\Administrator\AppData\Roaming\Tencent\QQ\Misc\com.tencent.advertisement
echo 已去除聊天窗口右上角广告！
set s=1572766337
set /p s=输入你的qq号（默认157）：
del /f /s /q C:\Users\Administrator\AppData\Roaming\Tencent\Users\%s%\QQ\Misc.db
md C:\Users\Administrator\AppData\Roaming\Tencent\Users\%s%\QQ\Misc.db
echo 已建立Misc.db文件夹！
set /p f=是否去除QQ迷你新闻弹窗和广告？（y/n）
if /i "%f%"=="y" (
echo #QQ迷你新闻弹窗>>C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 adshmmsg.qq.com>>C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 adshmct.qq.com>>C:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 fodder.qq.com>>C:\windows\system32\drivers\etc\hosts
) else exit
echo 已去除
pause