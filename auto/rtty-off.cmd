@echo off

taskkill /IM "mmtty*"

call %USERPROFILE%\auto\setup.cmd

REM Clar Clear
REM Config 040 RX
REM Config 060 RTS/off
REM Config 096 DTR/shift
REM Return to VFOB

set CAT=RC;EX0400;EX0600;EX0960;SV;
echo| set /p="%CAT%"> %COMPORT%

taskkill /IM "mmtty*"