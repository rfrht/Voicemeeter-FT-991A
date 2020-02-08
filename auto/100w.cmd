@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=PC100;
echo| set /p="%CAT%"> %COMPORT%