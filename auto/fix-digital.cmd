@echo off
call %USERPROFILE%\auto\setup.cmd
REM Fix digital mode to 3k wide, NB ON
set CAT=MD0C;SH017;NB01;
echo| set /p="%CAT%"> %COMPORT%