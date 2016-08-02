@echo off
rem This batch file deletes all .txt files in a specified directory
pushd F:\1
del *.txt
popd
cls
echo All text files deleted in the F:\1 directory
pause