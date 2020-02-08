@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=RC;
echo| set /p="%CAT%"> %COMPORT%