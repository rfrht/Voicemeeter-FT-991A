@echo off
call %USERPROFILE%\auto\setup.cmd
REM AGC Slow
set CAT=GT03;
echo| set /p="%CAT%"> %COMPORT%