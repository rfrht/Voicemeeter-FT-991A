@echo off
call %USERPROFILE%\auto\setup.cmd
REM Bandwidth 2400
set CAT=SH0013;
echo| set /p="%CAT%"> %COMPORT%