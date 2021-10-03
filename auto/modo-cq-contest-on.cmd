@echo off
call %USERPROFILE%\auto\setup.cmd

REM Vox on;
REM Digital Vox 600ms fall;
REM Processor off

SET CAT=VX1;EX1470600;PR00;

echo| set /p="%CAT%"> %COMPORT%