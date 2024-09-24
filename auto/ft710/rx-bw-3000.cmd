@echo off
call %USERPROFILE%\auto\setup.cmd

REM Narrow Off;Bandwidth normal

set CAT=SH0020;
echo| set /p="%CAT%"> %COMPORT%