@echo off
call %USERPROFILE%\auto\setup.cmd
REM Reset Shift to 0000
SET CAT=IS0+0000;
echo| set /p="%CAT%"> %COMPORT%