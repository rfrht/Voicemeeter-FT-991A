@echo off
call %USERPROFILE%\auto\setup.cmd
REM Select Band 2M
set CAT=BS10;
echo| set /p="%CAT%"> %COMPORT%