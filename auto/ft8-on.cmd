@echo off
call %USERPROFILE%\auto\setup.cmd

REM Copy VFO A to B
REM Config 071 RTS/OFF
REM Config 106 REAR
REM PROC Off
REM Meter VSWR

set CAT=AB;EX0711;EX1061;PR00;MS3;
echo| set /p="%CAT%"> %COMPORT%