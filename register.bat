@echo off
echo ����Ϊ��ע���ļ������Ե�...
set var=%cd%

reg add "HKEY_CLASSES_ROOT\*\shell\�պ���רɾ" /ve /d "���͵��պ���רɾ (&Y)" /f

reg add "HKEY_CLASSES_ROOT\*\shell\�պ���רɾ\command" /ve /d "%var%\�պ���רɾ.exe ""%%1""" /f

reg add "HKEY_CLASSES_ROOT\Folder\shell\�պ���רɾ" /ve /d "���͵��պ���רɾ (&Y)" /f

reg add "HKEY_CLASSES_ROOT\Folder\shell\�պ���רɾ\command" /ve /d "%var%\�պ���רɾ.exe ""%%1""" /f

reg add "HKEY_CLASSES_ROOT\lnkfile\shell\�պ���רɾ" /ve /d "���͵��պ���רɾ (&Y)" /f

reg add "HKEY_CLASSES_ROOT\lnkfile\shell\�պ���רɾ\command" /ve /d "%var%\�պ���רɾ.exe ""%%1""" /f
set var=



