@echo off
call %USERPROFILE%\auto\setup.cmd
REM Band Down
set "CAT=BD0;"
echo| set /p="%CAT%"> %COMPORT%