@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=NA00;SH21;
echo| set /p="%CAT%"> %COMPORT%