@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Monitor
SET CAT=ML0001;ML1000;
echo| set /p="%CAT%"> %COMPORT%