@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=VX1;EX1470600;PR00;PC100;MD0C;
echo| set /p="%CAT%"> %COMPORT%