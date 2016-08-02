@echo off
netsh wlan set hostednetwork mode=allow ssid=sss key=78945632
netsh wlan start hostednetwork
echo 提示：请手动设置本地连接共享给此无线&pause>nul