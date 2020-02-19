@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PC100;VX0;PR01;
echo| set /p="%CAT%"> %COMPORT%