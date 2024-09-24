@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set Shift to -600 Hz
SET CAT=IS0-0220;
echo| set /p="%CAT%"> %COMPORT%