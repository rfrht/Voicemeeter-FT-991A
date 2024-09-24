@echo off
call %USERPROFILE%\auto\setup.cmd

REM Config 110 100-3000

set CAT=EX1101;
echo| set /p="%CAT%"> %COMPORT%