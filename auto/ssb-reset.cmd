@echo off
call %USERPROFILE%\auto\setup.cmd

REM This does a truckload of things. Namely:
REM Noise Blanker off
REM DNF off
REM Contour off
REM Wide mode
REM Bandwidth 3200
REM AGC Slow
REM Attenuator Off
REM TX Power 100W
REM Meter to PO
REM Vox Off
REM Reset Shift
REM CLAR reset
REM CLAR off
REM TX Audio wide Config 110 100-3000
REM Set encoder to CH-Dial mode

SET CAT=NB00;BC00;NR00;CO000000;NA00;SH021;GT03;RA00;PC100;MS2;VX0;IS0+0000;RC;RT0;EX1101;
echo| set /p="%CAT%"> %COMPORT%

type %USERPROFILE%\auto\ch-dial.bin> %COMPORT%