@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set IPO/Preamp to Amp1
SET CAT=PA01;
echo| set /p="%CAT%"> %COMPORT%