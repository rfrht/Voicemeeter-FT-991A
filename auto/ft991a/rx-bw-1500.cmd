@echo off
call %USERPROFILE%\auto\setup.cmd
REM Narrow On;Bandwidth 1500
set CAT=NA01;SH007;
echo| set /p="%CAT%"> %COMPORT%