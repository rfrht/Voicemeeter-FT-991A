@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PA00;
echo| set /p="%CAT%"> %COMPORT%