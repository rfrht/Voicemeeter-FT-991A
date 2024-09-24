@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable autonotch/DNF
SET CAT=BC00;
echo| set /p="%CAT%"> %COMPORT%