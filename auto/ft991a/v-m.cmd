@echo off
call %USERPROFILE%\auto\setup.cmd
REM Toggle VFO/Memory
set "CAT=VM;"
echo| set /p="%CAT%"> %COMPORT%