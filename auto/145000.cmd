@echo off
call %USERPROFILE%\auto\setup.cmd
REM Recall Memory 017;TXPO 15W
set CAT=MC017;PC015;
echo| set /p="%CAT%"> %COMPORT%