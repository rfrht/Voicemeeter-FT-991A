@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=BC01;
echo| set /p="%CAT%"> %COMPORT%