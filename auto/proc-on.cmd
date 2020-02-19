@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PL028;PR01;
echo| set /p="%CAT%"> %COMPORT%