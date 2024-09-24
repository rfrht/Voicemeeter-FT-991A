@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Fast
SET CAT=FS0;
echo| set /p="%CAT%"> %COMPORT%