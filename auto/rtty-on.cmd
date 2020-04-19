@echo off
call %USERPROFILE%\auto\setup.cmd

REM Copy VFO A to B
REM Tune 7.042
REM Modo RTTY-L
REM Clar Clear
REM Config 040 TRX
REM Config 060 RTS/off
REM Config 096 DTR/shift
REM BW 3000 Hz

set CAT=AB;FA007042000;MD06;RC;EX0402;EX0602;EX0961;SH017;
echo| set /p="%CAT%"> %COMPORT%