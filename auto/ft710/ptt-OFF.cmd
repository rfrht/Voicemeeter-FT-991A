@echo off
call %USERPROFILE%\auto\setup.cmd
REM PTT Off
SET CAT=TX0;
echo| set /p="%CAT%"> %COMPORT%