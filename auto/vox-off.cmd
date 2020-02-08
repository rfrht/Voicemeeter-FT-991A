@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=VX0;
echo| set /p="%CAT%"> %COMPORT%