@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Monitor - Output to Speaker
SET CAT=ML0000;ML1000;
echo| set /p="%CAT%"> %COMPORT%