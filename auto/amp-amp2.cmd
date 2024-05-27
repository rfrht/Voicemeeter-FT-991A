@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Attenuator
REM Set IPO/Preamp to Amp2
SET CAT=RA00;PA02;
echo| set /p="%CAT%"> %COMPORT%