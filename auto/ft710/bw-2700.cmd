@echo off
call %USERPROFILE%\auto\setup.cmd

REM Bandwidth 300-2700

SET CAT=EX1103;
echo| set /p="%CAT%"> %COMPORT%