@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 10W
set CAT=PC010;
echo| set /p="%CAT%"> %COMPORT%