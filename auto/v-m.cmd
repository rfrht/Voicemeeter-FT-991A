@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=VM;"
echo| set /p="%CAT%"> %COMPORT%