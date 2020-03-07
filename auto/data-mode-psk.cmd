@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=EX0620;
echo| set /p="%CAT%"> %COMPORT%