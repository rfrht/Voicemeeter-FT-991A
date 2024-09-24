@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set Shift to -220 Hz
SET CAT=IS00-0220;
echo| set /p="%CAT%"> %COMPORT%