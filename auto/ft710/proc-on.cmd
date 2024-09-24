@echo off
call %USERPROFILE%\auto\setup.cmd
REM Processor Level 001;
REM Processor On

SET CAT=PL001;PR01;

echo| set /p="%CAT%"> %COMPORT%