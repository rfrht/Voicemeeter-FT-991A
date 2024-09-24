@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Fast
SET CAT=FS1;
echo| set /p="%CAT%"> %COMPORT%