@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 15W
set CAT=PC005;
echo| set /p="%CAT%"> %COMPORT%