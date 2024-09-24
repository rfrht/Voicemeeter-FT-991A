@echo off
call %USERPROFILE%\auto\setup.cmd

REM Bandwidth 200-2800

SET CAT=EX1102;
echo| set /p="%CAT%"> %COMPORT%