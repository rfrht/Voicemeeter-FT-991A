@echo off
call %USERPROFILE%\auto\setup.cmd

REM NAR/Wide to Narrow
REM BW 350 Hz

set CAT=NA00;SH017;

echo| set /p="%CAT%"> %COMPORT%