@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Clarifier
set "CAT=RT1;"
echo| set /p="%CAT%"> %COMPORT%