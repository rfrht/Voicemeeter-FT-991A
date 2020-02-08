@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=NR00;GT03;
echo| set /p="%CAT%"> %COMPORT%