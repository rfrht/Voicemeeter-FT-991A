@echo off
call %USERPROFILE%\auto\setup.cmd
REM Reset Shift to 0000
SET CAT=IS00+0000;
echo| set /p="%CAT%"> %COMPORT%