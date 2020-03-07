@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=GT01;
echo| set /p="%CAT%"> %COMPORT%