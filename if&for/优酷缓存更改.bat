::@echo off

for /f "delims=" %%a in ('dir /s /b %userprofile%\static.youku.com') do ( if exist "%%a" (
cd\&c:
cd "%%a"
cd..
rd /s /q static.youku.com
echo>static.youku.com&attrib +s +h static.youku.com)
)
for /f "delims=" %%a in ('dir /s /b "C:\Program Files\static.youku.com"') do ( if exist "%%a" (
cd\&c:
cd "%%a"
cd..
rd /s /q static.youku.com
echo>static.youku.com&attrib +s +h static.youku.com)
)
for /f "delims=" %%a in ('dir /s /b "C:\Program Files (x86)\static.youku.com"') do ( if exist "%%a" (
cd\&c:
cd "%%a"
cd..
rd /s /q static.youku.com
echo>static.youku.com&attrib +s +h static.youku.com)
)
for /f "delims=" %%a in ('dir /s /b D:\static.youku.com') do ( if exist "%%a" (
cd\&d:
cd "%%a"
cd..
rd /s /q static.youku.com
echo>static.youku.com&attrib +s +h static.youku.com)
)
for /f "delims=" %%a in ('dir /s /b E:\static.youku.com') do ( if exist "%%a" (
cd\&e:
cd "%%a"
cd..
rd /s /q static.youku.com
echo>static.youku.com&attrib +s +h static.youku.com)
)
for /f "delims=" %%a in ('dir /s /b F:\static.youku.com') do ( if exist "%%a" (
cd\&f:
cd "%%a"
cd..
rd /s /q static.youku.com
echo>static.youku.com&attrib +s +h static.youku.com)
)

exit
