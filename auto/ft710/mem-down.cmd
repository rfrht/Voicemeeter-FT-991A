@echo off
call %USERPROFILE%\auto\setup.cmd

REM Memory Down

SET CAT=CH1;
echo| set /p="%CAT%"> %COMPORT%