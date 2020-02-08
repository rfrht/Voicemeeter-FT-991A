@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=RU0010;
echo| set /p="%CAT%"> %COMPORT%