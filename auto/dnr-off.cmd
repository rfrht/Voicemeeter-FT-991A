@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=NR00;
echo| set /p="%CAT%"> %COMPORT%