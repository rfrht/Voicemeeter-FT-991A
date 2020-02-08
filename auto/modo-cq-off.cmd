@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PC100;VX0;
echo| set /p="%CAT%"> %COMPORT%