@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 50W
set CAT=PC050;
echo| set /p="%CAT%"> %COMPORT%