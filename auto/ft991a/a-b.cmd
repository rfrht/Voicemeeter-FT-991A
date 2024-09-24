@echo off
call %USERPROFILE%\auto\setup.cmd
REM Toggle VFO A/B
set "CAT=SV;"
echo| set /p="%CAT%"> %COMPORT%