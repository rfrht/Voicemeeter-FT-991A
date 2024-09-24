@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Clarifier
set "CAT=CF00010000;"
echo| set /p="%CAT%"> %COMPORT%