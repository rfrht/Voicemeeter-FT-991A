@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 100W
set CAT=PC100;
echo| set /p="%CAT%"> %COMPORT%