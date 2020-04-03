@echo off
call %USERPROFILE%\auto\setup.cmd
REM Power 100W, Disable Vox, Enable Processor, Disable Moni
SET CAT=PC100;VX0;PR01;ML0000;
echo| set /p="%CAT%"> %COMPORT%