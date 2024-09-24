@echo off
call %USERPROFILE%\auto\setup.cmd

REM Recall Memory 017;TXPO 15W; VOX OFF

set CAT=MC017;PC015;VX0;
echo| set /p="%CAT%"> %COMPORT%