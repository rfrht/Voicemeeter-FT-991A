@echo off
call %USERPROFILE%\auto\setup.cmd

REM Reprogram my QMB memories to my top 5 VHF frequencies:
REM 144.520, 144.580, 144.960, 145.000 and 147.540
REM And enters QMB mode.

set CAT=VM;MC023;PC040;MA;VM;NB00;QI;FA050314000;AC001;PA02;NB00;QI;FA028075000;AC000;PA01;NB00;QI;FA024916000;AC001;PA01;NB00;QI;FA021075000;AC000;PA01;NB00;QI;QR;

echo| set /p="%CAT%"> %COMPORT%