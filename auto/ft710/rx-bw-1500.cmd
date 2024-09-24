@echo off
call %USERPROFILE%\auto\setup.cmd

REM Bandwidth 1500

set CAT=SH0007;
echo| set /p="%CAT%"> %COMPORT%