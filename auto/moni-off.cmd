@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=ML0000;
echo| set /p="%CAT%"> %COMPORT%