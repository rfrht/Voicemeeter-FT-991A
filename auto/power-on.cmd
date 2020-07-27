@echo off
call %USERPROFILE%\auto\setup.cmd

REM Send dummy data
SET CAT=PS1;
echo| set /p="%CAT%"> %COMPORT%

REM Giving it a 1-second sleep
ping -n 2 localhost > nul

REM Now effectively waking up the radio
SET CAT=PS1;
echo| set /p="%CAT%"> %COMPORT%
