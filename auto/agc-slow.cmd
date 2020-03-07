@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=GT03;
echo| set /p="%CAT%"> %COMPORT%