@echo off
call %USERPROFILE%\auto\setup.cmd

REM Power 100W, 
REM Disable Vox, 
REM Disable Moni

SET CAT=PC100;VX0;ML0000;
echo| set /p="%CAT%"> %COMPORT%