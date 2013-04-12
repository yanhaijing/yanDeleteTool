@echo off
mode con cols=50 lines=18
title 颜海镜专删6.0正式版

:main
if not exist %1 call :shows
color 4a
cls
echo            ☆☆☆☆☆☆☆☆☆☆☆☆☆   
echo            ☆      颜海镜专删      ☆
echo            ☆☆☆☆☆☆☆☆☆☆☆☆☆
echo.
echo     颜海镜是一种理念
echo.
echo     我们每天都在努力，只为更好为您服务
echo  ----------------------------------------------  
echo   将要删除的文件拖到我上面 (*^__^*) 嘻嘻...
echo.   
echo   确认删除请按【回车】，否则请直接关闭此窗口...
echo  ------------------------------------------------
pause>nul
echo 系统正在初始化，请稍等...
echo ...
set /a sum=0
for %%x in (%*) do (
echo 正在为您清除环境...
taskkill /f /IM %%x /T 
echo 正在为您注册管理权限，请稍等...
CACLS %%x /t /e /c /p everyone:f>nul
echo 正在为您终止所要删除文件所牵连的进程...
taskkill /f /fi %%x /t >nul
echo 正在为您强制删除文件...
DEL /F /A /Q \\?\%%x
echo 正在为您扫除残余...
RD /S /Q \\?\%%x 2>nul
if exist %%x goto :sorry
set /a sum=sum+1
)

mode con cols=50 lines=12
color 2f
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo       ╬      颜海镜专删      ╬
echo       ╬     QQ:776771343     ╬
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo.
echo   恭喜┢┦aΡｐy 成功为您删除%sum%个文件
echo.
echo   衷心感谢您的使用  按任意键退出程序...
echo  ----------------------------------------
echo                           颜海镜
echo     时间：%time:~0,5%
pause>nul 
set sum=
exit

rem ===使用说明===
:shows
color 2f
cls
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo       ╬        颜海镜        ╬
echo       ╬     QQ:776771343     ╬
echo       ╬╬╬╬╬╬╬╬╬╬╬╬╬
echo.
echo      嗨 (☆_☆) 欢迎使用颜海镜专删
echo.
echo      专门针对 360 粉碎机无法解决的问题
echo.
echo      将您要删的东东拖到此上，或直接右键删除
echo.
echo      很简单的哦┢┦aΡｐy 赶快来试试吧
echo  --------------------------------------------
echo.
echo          若要退出请直接关闭此窗口...
echo.
echo                              颜海镜
pause>nul
goto :eof

rem ===无效号码提示===
:sorry
color f5
cls
echo.&echo.&echo.&echo.
echo      ！！！失败 ！！！     
echo.
echo      很遗憾-_-。sorry！ 未能帮您解决问题
echo.
echo      您可以试试 金山文件粉碎
echo.
echo      请放心，我们的工程师已经着手解决此问题
echo.
echo  --------------------------------------------
echo.
echo          若要退出请直接关闭此窗口...
echo.
echo                              颜海镜
echo      时间：%time:~0,5%
pause>nul
goto :eof



