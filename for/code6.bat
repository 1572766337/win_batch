@echo off
for /f "delims=，" %%i in (test.txt) do echo %%i
pause
::切分字符串的利器：delims=，结果，你惊奇地发现，每行第一个逗号之后的所有内容都不见了（如果有不存在逗号的行，则保留原样），也就说，你成功地提取到了每行第一个逗号之前的所有内容！