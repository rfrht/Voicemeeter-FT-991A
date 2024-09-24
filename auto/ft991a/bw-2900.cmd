@echo off
call %USERPROFILE%\auto\setup.cmd

REM Bandwidth 100-2900

SET CAT=EX1101;
echo| set /p="%CAT%"> %COMPORT%