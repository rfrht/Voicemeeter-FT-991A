@echo off
call %USERPROFILE%\auto\setup.cmd

REM Squelch 30, Menu 076 DAKY

set CAT=EX0760;

echo| set /p="%CAT%"> %COMPORT%


taskkill /IM "direwolf*"
