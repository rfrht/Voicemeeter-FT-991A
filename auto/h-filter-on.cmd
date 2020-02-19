@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=CO010580;CO000001;IS0+0280;NA01;SH009;NR01;GT01;
echo| set /p="%CAT%"> %COMPORT%