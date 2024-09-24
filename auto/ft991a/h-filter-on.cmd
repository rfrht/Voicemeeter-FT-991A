@echo off
call %USERPROFILE%\auto\setup.cmd
REM Contour 580 Hz;Contour on;Shift 280 Hz;RX Narrow;RX BW 1800 hz;DNR on;AGC fast
SET CAT=CO010580;CO000001;IS0+0280;NA01;SH009;NR01;GT01;
echo| set /p="%CAT%"> %COMPORT%