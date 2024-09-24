@echo off
call %USERPROFILE%\auto\setup.cmd
REM Reset shift;RX Wide;RX BW 3200 hz;DNR off;AGC Slow;Contour off;
SET CAT=IS0+0000;NA00;SH021;NR00;GT03;CO000000;
echo| set /p="%CAT%"> %COMPORT%