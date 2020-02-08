@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=BD0;"
echo| set /p="%CAT%"> %COMPORT%