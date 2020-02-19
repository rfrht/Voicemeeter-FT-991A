@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PR00;
echo| set /p="%CAT%"> %COMPORT%