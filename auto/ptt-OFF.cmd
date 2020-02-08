@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=TX0;
echo| set /p="%CAT%"> %COMPORT%