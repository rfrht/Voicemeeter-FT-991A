@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=NA00;SH014;
echo| set /p="%CAT%"> %COMPORT%