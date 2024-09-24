@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Vox
SET CAT=VX0;
echo| set /p="%CAT%"> %COMPORT%