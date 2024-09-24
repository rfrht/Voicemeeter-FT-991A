@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Vox; set Digital Vox delay to 600 ms
SET CAT=VX1;EX1470600;
echo| set /p="%CAT%"> %COMPORT%