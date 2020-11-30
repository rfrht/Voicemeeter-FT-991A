@echo off
call %USERPROFILE%\auto\setup.cmd

REM Narrow Off;Bandwidth 3200

set CAT=NA00;SH021;
echo| set /p="%CAT%"> %COMPORT%