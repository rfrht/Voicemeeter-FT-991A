@echo off
call %USERPROFILE%\auto\setup.cmd

REM Memory Down

SET CAT=CH0;
echo| set /p="%CAT%"> %COMPORT%