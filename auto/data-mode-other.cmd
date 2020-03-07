@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=EX0621;
echo| set /p="%CAT%"> %COMPORT%