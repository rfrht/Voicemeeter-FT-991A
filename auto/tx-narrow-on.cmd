@echo off
call %USERPROFILE%\auto\setup.cmd

REM Config 110 400-2600

set CAT=EX1104;
echo| set /p="%CAT%"> %COMPORT%