@echo off
call %USERPROFILE%\auto\setup.cmd
REM AGC Fast
set CAT=GT01;
echo| set /p="%CAT%"> %COMPORT%