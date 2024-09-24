@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Preamp
REM Attenuator On
set CAT=PA00;RA01;
echo| set /p="%CAT%"> %COMPORT%