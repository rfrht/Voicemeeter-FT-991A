@echo off
call %USERPROFILE%\auto\setup.cmd

REM Enter Scan mode

set CAT=SC0;
echo| set /p="%CAT%"> %COMPORT%