@echo off
call %USERPROFILE%\auto\setup.cmd

REM Copy VFO A to B
REM Config 071 RTS/OFF
REM Config 106 REAR
REM PROC Off
REM Meter ALC
REM Power 10W
REM Config 108 SSB PTTT Select RTS (for 60m)
REM Vox On
REM QMB
REM Speaker volume 0
REM Menu 062 OTHER
REM Menu 064 & 065 +1500

set CAT=AB;EX0711;EX1061;PR00;MS1;PC010;EX1081;QR;AG0000;EX0621;EX064+1500;EX065+1500;
echo| set /p="%CAT%"> %COMPORT%