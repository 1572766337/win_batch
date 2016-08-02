@ECHO OFF
ECHO 请选择功能（按回车确定）：
ECHO "1"文件属性全加
ECHO "2"文件属性全减
ECHO 其它键退出
SET /P psn=请输入数字键并按回车:
CLS
IF /I "%psn%"=="1" (
    GOTO 隐藏
) ELSE IF /I "%psn%"=="2" (
    GOTO 显示
) ELSE (
    GOTO EX
)
:隐藏
@ECHO OFF
ECHO 更改"%cd%\"下文件的所有属性(只读，存档，系统，隐藏):
ATTRIB +R +A +S +H "%CD%\*" /S /D
:显示
@ECHO OFF
ECHO 更改"%cd%\"下文件的所有属性(只读，存档，系统，隐藏):
ATTRIB -R -A -S -H "%CD%\*" /S /D
PAUSE
:EX
EXIT