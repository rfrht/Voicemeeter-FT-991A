@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=TX1;
echo| set /p="%CAT%"> %COMPORT%