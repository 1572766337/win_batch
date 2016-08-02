echo HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System [1 17]>regini.dat
regini regini.dat
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
echo HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System [2 17]>regini.dat
regini regini.dat
del /f /q regini.dat
pause