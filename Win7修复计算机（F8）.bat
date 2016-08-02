@echo off
copy D:\Recovery\winre.wim C:\Recovery\winre.wim
reagentc /disable
reagentc /setreimage /path C:\recovery
reagentc /enable
reagentc /info
pause