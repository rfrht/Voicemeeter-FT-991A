@echo off
call %USERPROFILE%\auto\setup.cmd
REM Memory to VFO A
set "CAT=MA;"
echo| set /p="%CAT%"> %COMPORT%