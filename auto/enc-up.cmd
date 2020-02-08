@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=EU801;
echo| set /p="%CAT%"> %COMPORT%