@echo off
call %USERPROFILE%\auto\setup.cmd

REM Open (Zero) Squelch

set CAT=SQ0000;
echo| set /p="%CAT%"> %COMPORT%