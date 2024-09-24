@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=BU0;"
echo| set /p="%CAT%"> %COMPORT%