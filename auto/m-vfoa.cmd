@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=MA;"
echo| set /p="%CAT%"> %COMPORT%