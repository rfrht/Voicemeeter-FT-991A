@echo off
call %USERPROFILE%\auto\setup.cmd

REM DNR On, use program 1

SET CAT=NR01;RL001;
echo| set /p="%CAT%"> %COMPORT%