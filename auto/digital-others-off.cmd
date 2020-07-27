@echo off
call %USERPROFILE%\auto\setup.cmd

taskkill /IM "mshv*"

REM Back to VFO B
REM Meter TXPO

set CAT=SV;MS2;
echo| set /p="%CAT%"> %COMPORT%