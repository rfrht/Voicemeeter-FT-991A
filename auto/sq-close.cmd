@echo off
call %USERPROFILE%\auto\setup.cmd

REM Open (Zero) Squelch

set CAT=SQ0050;
echo| set /p="%CAT%"> %COMPORT%