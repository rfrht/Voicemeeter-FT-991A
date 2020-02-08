@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=FS0;
echo| set /p="%CAT%"> %COMPORT%