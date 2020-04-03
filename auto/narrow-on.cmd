@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=NA01;SH009;
echo| set /p="%CAT%"> %COMPORT%