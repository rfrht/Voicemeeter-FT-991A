@echo off
call %USERPROFILE%\auto\setup.cmd
REM Attenuator Off
set CAT=RA00;
echo| set /p="%CAT%"> %COMPORT%