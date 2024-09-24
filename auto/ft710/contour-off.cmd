@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Contour
set CAT=CO000000;
echo| set /p="%CAT%"> %COMPORT%