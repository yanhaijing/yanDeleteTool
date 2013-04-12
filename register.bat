@echo off
echo 正在为您注册文件，请稍等...
set var=%cd%

reg add "HKEY_CLASSES_ROOT\*\shell\颜海镜专删" /ve /d "发送到颜海镜专删 (&Y)" /f

reg add "HKEY_CLASSES_ROOT\*\shell\颜海镜专删\command" /ve /d "%var%\颜海镜专删.exe ""%%1""" /f

reg add "HKEY_CLASSES_ROOT\Folder\shell\颜海镜专删" /ve /d "发送到颜海镜专删 (&Y)" /f

reg add "HKEY_CLASSES_ROOT\Folder\shell\颜海镜专删\command" /ve /d "%var%\颜海镜专删.exe ""%%1""" /f

reg add "HKEY_CLASSES_ROOT\lnkfile\shell\颜海镜专删" /ve /d "发送到颜海镜专删 (&Y)" /f

reg add "HKEY_CLASSES_ROOT\lnkfile\shell\颜海镜专删\command" /ve /d "%var%\颜海镜专删.exe ""%%1""" /f
set var=



