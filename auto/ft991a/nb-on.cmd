@echo off
call %USERPROFILE%\auto\setup.cmd
REM Enable Noise Blanker
set "CAT=NB01;"
echo| set /p="%CAT%"> %COMPORT%