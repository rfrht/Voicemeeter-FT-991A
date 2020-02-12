@echo off
call %USERPROFILE%\auto\setup.cmd
set CAT=CO010580;CO000001;
echo| set /p="%CAT%"> %COMPORT%