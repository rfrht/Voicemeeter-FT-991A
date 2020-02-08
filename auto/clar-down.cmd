@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=RD0010;
echo| set /p="%CAT%"> %COMPORT%