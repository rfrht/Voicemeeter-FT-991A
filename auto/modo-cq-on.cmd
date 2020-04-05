@echo off
call %USERPROFILE%\auto\setup.cmd
REM TXPO 50W;Vox on;Digital Vox 600ms fall;Processor off
SET CAT=PC050;VX1;EX1470600;PR00;
echo| set /p="%CAT%"> %COMPORT%