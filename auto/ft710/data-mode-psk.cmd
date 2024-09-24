@echo off
call %USERPROFILE%\auto\setup.cmd
REM Menu clause 062 set to PSK
set CAT=EX0620;
echo| set /p="%CAT%"> %COMPORT%