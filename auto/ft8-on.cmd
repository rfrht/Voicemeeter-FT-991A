@echo off
call %USERPROFILE%\auto\setup.cmd

REM Copy VFO A to B
REM Config 071 RTS/OFF
REM Config 106 REAR
REM PROC Off
REM Meter VSWR
REM Config 108 SSB PTTT Select RTS (for 60m)

set CAT=AB;EX0711;EX1061;PR00;MS3;EX1081;
echo| set /p="%CAT%"> %COMPORT%