@echo off
call %USERPROFILE%\auto\setup.cmd

REM Bandwidth 400-2600

SET CAT=EX1104;
echo| set /p="%CAT%"> %COMPORT%