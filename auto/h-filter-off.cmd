@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=IS0+0000;NA00;SH021;NR00;GT03;CO000000;
echo| set /p="%CAT%"> %COMPORT%