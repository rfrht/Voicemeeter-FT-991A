@echo off
call %USERPROFILE%\auto\setup.cmd

REM Enter QMB mode

set CAT=QR;
echo| set /p="%CAT%"> %COMPORT%