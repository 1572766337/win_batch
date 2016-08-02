@echo off
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del /f /q "%userprofile%\AppData\Local\iconcache.db"
start explorer