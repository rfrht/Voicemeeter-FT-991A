@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=ML0001;
echo| set /p="%CAT%"> %COMPORT%