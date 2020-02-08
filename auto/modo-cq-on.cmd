@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PC050;VX1;EX1470600;
echo| set /p="%CAT%"> %COMPORT%