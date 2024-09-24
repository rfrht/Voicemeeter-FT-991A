@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Clarifier
set "CAT=RT0;"
echo| set /p="%CAT%"> %COMPORT%