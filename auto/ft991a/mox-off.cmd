@echo off
call %USERPROFILE%\auto\setup.cmd

REM Move Mic Selects to Rear so I can use Mox

SET CAT=MX0;EX0450;EX0740;EX1060;

echo| set /p="%CAT%"> %COMPORT%