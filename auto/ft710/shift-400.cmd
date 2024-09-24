@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set Shift to -400 Hz
SET CAT=IS00-0400;
echo| set /p="%CAT%"> %COMPORT%