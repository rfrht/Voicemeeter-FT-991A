@echo off
call %USERPROFILE%\auto\setup.cmd

REM Power-off the radio
SET CAT=PS0;
echo| set /p="%CAT%"> %COMPORT%
