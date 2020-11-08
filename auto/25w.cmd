@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 25W
set CAT=PC025;
echo| set /p="%CAT%"> %COMPORT%