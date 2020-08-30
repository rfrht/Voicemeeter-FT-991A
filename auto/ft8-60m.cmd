@echo off
call %USERPROFILE%\auto\setup.cmd

REM Recall Memory 120 (60m memory 3)
REM PROC Off
REM Meter ALC
REM Power 10W
REM Config 106 REAR
REM Config 108 SSB PTTT Select RTS (for 60m)
REM Preamp AMP1
REM AGC Fast

set CAT=MC120;PR00;PC010;EX1061;EX1081;PA01;GT01;
echo| set /p="%CAT%"> %COMPORT%