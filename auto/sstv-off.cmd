@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=VX0;PR01;MD02;
echo| set /p="%CAT%"> %COMPORT%