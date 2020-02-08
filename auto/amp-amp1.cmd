@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PA01;
echo| set /p="%CAT%"> %COMPORT%