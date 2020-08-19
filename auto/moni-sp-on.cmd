@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Monitor - Output to Speaker
SET CAT=ML0001;ML1050;
echo| set /p="%CAT%"> %COMPORT%