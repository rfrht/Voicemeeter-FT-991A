@echo off
call %USERPROFILE%\auto\setup.cmd

REM Enter Scan mode

set CAT=SC1;
echo| set /p="%CAT%"> %COMPORT%