@ECHO OFF
ECHO ��ѡ���ܣ����س�ȷ������
ECHO "1"�ļ�����ȫ��
ECHO "2"�ļ�����ȫ��
ECHO �������˳�
SET /P psn=���������ּ������س�:
CLS
IF /I "%psn%"=="1" (
    GOTO ����
) ELSE IF /I "%psn%"=="2" (
    GOTO ��ʾ
) ELSE (
    GOTO EX
)
:����
@ECHO OFF
ECHO ����"%cd%\"���ļ�����������(ֻ�����浵��ϵͳ������):
ATTRIB +R +A +S +H "%CD%\*" /S /D
:��ʾ
@ECHO OFF
ECHO ����"%cd%\"���ļ�����������(ֻ�����浵��ϵͳ������):
ATTRIB -R -A -S -H "%CD%\*" /S /D
PAUSE
:EX
EXIT