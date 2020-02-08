@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=FS1;
echo| set /p="%CAT%"> %COMPORT%