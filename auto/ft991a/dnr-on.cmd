@echo off
call %USERPROFILE%\auto\setup.cmd

REM DNR On, use program 1
REM Set AGC Fast

SET CAT=NR01;RL001;GT01;
echo| set /p="%CAT%"> %COMPORT%