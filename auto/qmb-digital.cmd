@echo off
call %USERPROFILE%\auto\setup.cmd

REM Reprogram my QMB memories to my top 5 VHF frequencies:
REM 144.520, 144.580, 144.960, 145.000 and 147.540
REM And enters QMB mode.

set CAT=VM;MC023;PC040;MA;VM;QI;FA050314000;AC000;QI;FA028075000;AC001;QI;FA024916000;AC001;QI;FA021075000;AC000;QI;QR;

echo| set /p="%CAT%"> %COMPORT%