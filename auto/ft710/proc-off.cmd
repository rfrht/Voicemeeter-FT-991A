@echo off
call %USERPROFILE%\auto\setup.cmd
REM Processor Off
SET CAT=PR00;
echo| set /p="%CAT%"> %COMPORT%