@echo off
call %USERPROFILE%\auto\setup.cmd
REM Decrease 10Hz from Clarifier
set CAT=RD0010;
echo| set /p="%CAT%"> %COMPORT%