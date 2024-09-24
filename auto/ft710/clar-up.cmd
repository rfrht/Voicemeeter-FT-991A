@echo off
call %USERPROFILE%\auto\setup.cmd
REM Add 10Hz to Clarifier
set CAT=RU0010;
echo| set /p="%CAT%"> %COMPORT%