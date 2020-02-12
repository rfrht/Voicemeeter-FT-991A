@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=CO000000;
echo| set /p="%CAT%"> %COMPORT%