@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 20W
set CAT=PC020;
echo| set /p="%CAT%"> %COMPORT%