@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=RT0;"
echo| set /p="%CAT%"> %COMPORT%