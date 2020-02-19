@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=NA01;SH09;
echo| set /p="%CAT%"> %COMPORT%