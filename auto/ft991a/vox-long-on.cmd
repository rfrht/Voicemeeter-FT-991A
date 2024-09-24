@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Vox; set Digital Vox delay to 1200 ms
SET CAT=VX1;EX1471200;
echo| set /p="%CAT%"> %COMPORT%