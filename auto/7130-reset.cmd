@echo off
call %USERPROFILE%\auto\setup.cmd

REM This does a truckload of things. Namely:
REM Set VFO B to prior settings (in case you want to recall)
REM Tune to 7.130
REM Antenna Tuner off
REM Mode LSB
REM Noise Blanker on
REM DNF off
REM Contour off
REM Wide mode
REM Bandwidth 3200
REM AGC Slow
REM Attenuator Off
REM Preamp Off/IPO
REM Processor on
REM TX Power 100W
REM Meter to PO
REM Vox Off
REM Reset Shift

SET CAT=AB;FA007130000;AC000;MD01;NB01;BC00;NR00;CO000000;NA00;SH021;GT03;RA00;PA00;PR01;PC100;MS2;VX0;IS0+0000;
echo| set /p="%CAT%"> %COMPORT%