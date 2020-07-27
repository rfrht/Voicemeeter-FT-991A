@echo off
call %USERPROFILE%\auto\setup.cmd

taskkill /IM "mshv*"

REM Config 071 RTS/OFF
REM Config 106 MIC
REM Back to VFO B
REM Proc On
REM Meter TXPO

set CAT=EX0710;EX1060;SV;PR01;MS2;
echo| set /p="%CAT%"> %COMPORT%