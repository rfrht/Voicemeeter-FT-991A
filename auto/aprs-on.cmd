@echo off
call %USERPROFILE%\auto\setup.cmd

REM Reprogram my QMB memories to my top 5 VHF frequencies:
REM 144.520, 144.580, 144.960, 145.000 and 147.540
REM And enters QMB mode.

set CAT=PC005;VM;FA145570000;AG0000;SQ0000;

echo| set /p="%CAT%"> %COMPORT%

cd c:\ham\direwolf
start direwolf.exe