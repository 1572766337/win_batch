@echo off
set /p n=ÊäÈëÒª²éÕÒµÄ×Ö·û´®£º
type *.*|findstr "%n%"&&(
echo ´æÔÚ×Ö·û´®%n%
)||echo ²»´æÔÚ×Ö·û´®%n%
pause>nul