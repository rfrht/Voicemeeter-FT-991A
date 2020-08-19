@echo off
call %USERPROFILE%\auto\setup.cmd

REM Monitor - Output to Speaker; level 35

SET CAT=ML0001;ML1035;
echo| set /p="%CAT%"> %COMPORT%