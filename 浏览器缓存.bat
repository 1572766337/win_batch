@echo off
del /f /s /q "D:\TheWorld6\User Data\Default\Cache"
del /f /s /q "D:\TheWorld6\User Data\Default\JumpListIcons"
del /f /s /q "D:\TheWorld6\User Data\Default\JumpListIconsOld"
del /f /s /q "D:\TheWorld6\User Data\Default\Media Cache"
del /f /s /q "D:\TheWorld6\User Data\Default\Session Storage"
del /f /s /q "D:\TheWorld6\User Data\Default\History"
copy "D:\TheWorld6\Default Cache" "D:\TheWorld6\User Data\Default\Cache"
exit