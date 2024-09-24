@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Attenuator
REM Set IPO/Preamp to Amp1
SET CAT=RA00;PA01;
echo| set /p="%CAT%"> %COMPORT%