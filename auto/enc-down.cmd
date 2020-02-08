@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=ED801;
echo| set /p="%CAT%"> %COMPORT%