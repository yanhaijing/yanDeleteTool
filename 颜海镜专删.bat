@echo off
mode con cols=50 lines=18
title �պ���רɾ6.0��ʽ��

:main
if not exist %1 call :shows
color 4a
cls
echo            ��������������   
echo            ��      �պ���רɾ      ��
echo            ��������������
echo.
echo     �պ�����һ������
echo.
echo     ����ÿ�춼��Ŭ����ֻΪ����Ϊ������
echo  ----------------------------------------------  
echo   ��Ҫɾ�����ļ��ϵ������� (*^__^*) ����...
echo.   
echo   ȷ��ɾ���밴���س�����������ֱ�ӹرմ˴���...
echo  ------------------------------------------------
pause>nul
echo ϵͳ���ڳ�ʼ�������Ե�...
echo ...
set /a sum=0
for %%x in (%*) do (
echo ����Ϊ���������...
taskkill /f /IM %%x /T 
echo ����Ϊ��ע�����Ȩ�ޣ����Ե�...
CACLS %%x /t /e /c /p everyone:f>nul
echo ����Ϊ����ֹ��Ҫɾ���ļ���ǣ���Ľ���...
taskkill /f /fi %%x /t >nul
echo ����Ϊ��ǿ��ɾ���ļ�...
DEL /F /A /Q \\?\%%x
echo ����Ϊ��ɨ������...
RD /S /Q \\?\%%x 2>nul
if exist %%x goto :sorry
set /a sum=sum+1
)

mode con cols=50 lines=12
color 2f
echo       �p�p�p�p�p�p�p�p�p�p�p�p�p
echo       �p      �պ���רɾ      �p
echo       �p     QQ:776771343     �p
echo       �p�p�p�p�p�p�p�p�p�p�p�p�p
echo.
echo   ��ϲ�Ʃ�a����y �ɹ�Ϊ��ɾ��%sum%���ļ�
echo.
echo   ���ĸ�л����ʹ��  ��������˳�����...
echo  ----------------------------------------
echo                           �պ���
echo     ʱ�䣺%time:~0,5%
pause>nul 
set sum=
exit

rem ===ʹ��˵��===
:shows
color 2f
cls
echo       �p�p�p�p�p�p�p�p�p�p�p�p�p
echo       �p        �պ���        �p
echo       �p     QQ:776771343     �p
echo       �p�p�p�p�p�p�p�p�p�p�p�p�p
echo.
echo      �� (��_��) ��ӭʹ���պ���רɾ
echo.
echo      ר����� 360 ������޷����������
echo.
echo      ����Ҫɾ�Ķ����ϵ����ϣ���ֱ���Ҽ�ɾ��
echo.
echo      �ܼ򵥵�Ŷ�Ʃ�a����y �Ͽ������԰�
echo  --------------------------------------------
echo.
echo          ��Ҫ�˳���ֱ�ӹرմ˴���...
echo.
echo                              �պ���
pause>nul
goto :eof

rem ===��Ч������ʾ===
:sorry
color f5
cls
echo.&echo.&echo.&echo.
echo      ������ʧ�� ������     
echo.
echo      ���ź�-_-��sorry�� δ�ܰ����������
echo.
echo      ���������� ��ɽ�ļ�����
echo.
echo      ����ģ����ǵĹ���ʦ�Ѿ����ֽ��������
echo.
echo  --------------------------------------------
echo.
echo          ��Ҫ�˳���ֱ�ӹرմ˴���...
echo.
echo                              �պ���
echo      ʱ�䣺%time:~0,5%
pause>nul
goto :eof



