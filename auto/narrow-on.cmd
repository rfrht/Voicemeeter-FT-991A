@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=NA01;SH004;
echo| set /p="%CAT%"> %COMPORT%