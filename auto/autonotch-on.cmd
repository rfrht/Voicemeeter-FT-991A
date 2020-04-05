@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable autonotch/DNF
SET CAT=BC01;
echo| set /p="%CAT%"> %COMPORT%