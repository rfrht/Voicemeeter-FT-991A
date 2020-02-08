@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=MC017;PC015;
echo| set /p="%CAT%"> %COMPORT%