@echo off
call %USERPROFILE%\auto\setup.cmd

REM Reprogram my QMB memories to my top 5 VHF frequencies:
REM 144.520, 144.580, 144.960, 145.000 and 147.540
REM And enters QMB mode.

set CAT=MC017;PC015;MA;VM;FA144520000;QI;FA144580000;QI;FA144960000;QI;FA145000000;QI;FA147540000;QI;QR;

echo| set /p="%CAT%"> %COMPORT%