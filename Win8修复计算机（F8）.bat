@echo off
copy D:\Recovery\boot8.wim C:\Recovery\winre.wim
reagentc /disable
reagentc /setreimage /path C:\recovery
reagentc /enable
reagentc /info
pause