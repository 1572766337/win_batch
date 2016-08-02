@echo off&title scanvirus&color a
if not exist conf md conf
if not exist temp md temp
echo.&echo ---------------------------------正在扫描--------------------------------------
echo.&echo ------------------------------根目录下全部文件---------------------------------
if not exist conf\lastfile dir /a /o \>conf\lastfile
dir /a /o \>temp\nowfile
echo.&echo --------------------------------全部exe文件------------------------------------
if not exist conf\lastexe dir /a /s /b \*.exe>conf\lastexe
dir /a /s /b \*.exe>temp\nowexe
echo.&echo --------------------------------全部com文件------------------------------------
if not exist conf\lastcom dir /a /s /b \*.com>conf\lastcom
dir /a /s /b \*.com>temp\nowcom
echo.&echo --------------------------------全部dll文件------------------------------------
if not exist conf\lastdll dir /a /s /b \*.dll>conf\lastdll
dir /a /s /b \*.dll>temp\nowdll
echo.&echo --------------------------------全部pif文件------------------------------------
if not exist conf\lastpif dir /a /s /b \*.pif>conf\lastpif
dir /a /s /b \*.pif>temp\nowpif
echo.&echo --------------------------------全部sys文件------------------------------------
if not exist conf\lastsys dir /a /s /b \*.sys>conf\lastsys
dir /a /s /b \*.sys>temp\nowsys
echo.&echo ----------------------------正在与上次信息对比---------------------------------
fc /n temp\nowfile conf\lastfile>scanvirus
fc /n temp\nowexe conf\lastexe>>scanvirus
fc /n temp\nowcom conf\lastcom>>scanvirus
fc /n temp\nowdll conf\lastdll>>scanvirus
fc /n temp\nowpif conf\lastpif>>scanvirus
fc /n temp\nowsys conf\lastsys>>scanvirus
echo.&echo -----------------------------------结束----------------------------------------
notepad scanvirus
echo.&echo 按任意键保存本次信息为配置文件&pause>nul
copy /y temp\nowfile conf\lastfile
copy /y temp\nowexe conf\lastexe
copy /y temp\nowcom conf\lastcom
copy /y temp\nowdll conf\lastdll
copy /y temp\nowpif conf\lastpif
copy /y temp\nowsys conf\lastsys
echo.&echo 成功！！！3秒后退出！！！
ping -n 3 127.0.0.1>nul