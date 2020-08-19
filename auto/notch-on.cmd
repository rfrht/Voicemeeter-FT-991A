@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Notch
SET CAT=BP00001;
echo| set /p="%CAT%"> %COMPORT%