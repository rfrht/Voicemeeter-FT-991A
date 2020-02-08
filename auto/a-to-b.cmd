@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=AB;"
echo| set /p="%CAT%"> %COMPORT%