@echo off
call %USERPROFILE%\auto\setup.cmd
REM PTT On
SET CAT=TX1;
echo| set /p="%CAT%"> %COMPORT%