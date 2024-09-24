@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Notch
SET CAT=BP00000;
echo| set /p="%CAT%"> %COMPORT%