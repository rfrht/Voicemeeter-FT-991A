@echo off
call %USERPROFILE%\auto\setup.cmd

REM Copy VFO A to B
REM Tune 7.043
REM Modo RTTY-L
REM Clar Clear
REM Config 040 TRX
REM Config 060 RTS/off
REM Config 096 DTR/shift
REM BW 1200 Hz
REM Meter VSWR

set CAT=AB;FA007043000;MD06;RC;EX0402;EX0602;EX0961;SH012;MS3;
echo| set /p="%CAT%"> %COMPORT%