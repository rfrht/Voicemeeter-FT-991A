@echo off
call %USERPROFILE%\auto\setup.cmd

REM VFOA=B;
REM Narrow Off;
REM Bandwidth 3200;
REM Mode Data-USB;
REM Meter ALC;
Vox on; 
REM Vox 600 ms;

set CAT=AB;NA00;SH021;MD0C;MS1;VX1;EX1470600;
echo| set /p="%CAT%"> %COMPORT%