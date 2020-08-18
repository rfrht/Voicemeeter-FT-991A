@echo off
call %USERPROFILE%\auto\setup.cmd
REM TX Power 40W
set CAT=PC040;
echo| set /p="%CAT%"> %COMPORT%