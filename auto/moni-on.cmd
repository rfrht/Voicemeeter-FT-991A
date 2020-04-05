@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Monitor
SET CAT=ML0001;
echo| set /p="%CAT%"> %COMPORT%