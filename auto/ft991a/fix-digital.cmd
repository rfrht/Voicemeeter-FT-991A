@echo off
call %USERPROFILE%\auto\setup.cmd
REM Fix digital mode to 3k wide, NB ON; Wide

set CAT=MD0C;SH017;NB01;NA00;

echo| set /p="%CAT%"> %COMPORT%