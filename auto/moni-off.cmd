@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Monitor
SET CAT=ML0000;
echo| set /p="%CAT%"> %COMPORT%