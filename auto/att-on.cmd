@echo off
call %USERPROFILE%\auto\setup.cmd
REM Attenuator On
set CAT=RA01;
echo| set /p="%CAT%"> %COMPORT%