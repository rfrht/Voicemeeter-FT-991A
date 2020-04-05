@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set IPO/Preamp to Ipo/Preamp off
SET CAT=PA00;
echo| set /p="%CAT%"> %COMPORT%