reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /t REG_SZ /d C:\Windows\empty.ico,0
taskkill /f /im explorer.exe
start explorer