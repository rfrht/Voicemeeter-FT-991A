@echo off
call %USERPROFILE%\auto\setup.cmd
REM Disable Noise Blanker
set "CAT=NB00;"
echo| set /p="%CAT%"> %COMPORT%