@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=PC050;
echo| set /p="%CAT%"> %COMPORT%