@echo off
call %USERPROFILE%\auto\setup.cmd
REM Reset Clarifier offset
set CAT=RC;
echo| set /p="%CAT%"> %COMPORT%