@echo off
call %USERPROFILE%\auto\setup.cmd
REM Narrow Off;Bandwidth 2400
set CAT=NA00;SH014;
echo| set /p="%CAT%"> %COMPORT%