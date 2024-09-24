@echo off
call %USERPROFILE%\auto\setup.cmd

REM Set Noise Reduction = off
REM Set AGC to Slow

SET CAT=NR00;GT03;
echo| set /p="%CAT%"> %COMPORT%