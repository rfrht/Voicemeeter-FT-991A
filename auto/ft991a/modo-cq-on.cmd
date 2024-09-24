@echo off
call %USERPROFILE%\auto\setup.cmd

REM TXPO 25W;
REM Vox on;
REM Digital Vox 600ms fall;
REM Processor off

SET CAT=PC025;VX1;EX1470600;PR00;

echo| set /p="%CAT%"> %COMPORT%