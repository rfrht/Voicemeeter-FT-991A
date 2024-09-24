@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Clarifier
set "CAT=CF00000000;"
echo| set /p="%CAT%"> %COMPORT%