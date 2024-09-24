@echo off
call %USERPROFILE%\auto\setup.cmd
REM Menu clause 062 set to Other
set CAT=EX0621;
echo| set /p="%CAT%"> %COMPORT%