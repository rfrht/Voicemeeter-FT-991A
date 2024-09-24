@echo off
call %USERPROFILE%\auto\setup.cmd

REM Move Mic Selects to Rear so I can use Mox

SET CAT=EX0451;EX0741;EX1061;MX1;

echo| set /p="%CAT%"> %COMPORT%