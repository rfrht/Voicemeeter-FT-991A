@echo off
call %USERPROFILE%\auto\setup.cmd
REM Narrow Off;Bandwidth 3200;Mode Data-USB;Meter ALC;Vox on; Vox 600 ms;
set CAT=NA00;SH021;MD0C;MS1;VX1;EX1470600;
echo| set /p="%CAT%"> %COMPORT%