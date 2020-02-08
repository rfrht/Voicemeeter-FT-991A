@echo off
call %USERPROFILE%\auto\setup.cmd
set "CAT=SV;"
echo| set /p="%CAT%"> %COMPORT%