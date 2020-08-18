@echo off
call %USERPROFILE%\auto\setup.cmd

taskkill /IM "mshv*"

REM Config 071 RTS/OFF
REM Config 106 MIC
REM Back to VFO B
REM Proc On
REM Meter TXPO
REM Config 108 SSB PTTT Select DAKY (for 60m)

set CAT=EX0710;EX1060;SV;PR01;MS2;EX1080;
echo| set /p="%CAT%"> %COMPORT%