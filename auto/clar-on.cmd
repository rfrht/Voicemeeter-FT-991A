@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=RT1;"
echo| set /p="%CAT%"> %COMPORT%