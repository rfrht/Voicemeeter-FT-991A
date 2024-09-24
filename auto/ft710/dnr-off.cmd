@echo off
call %USERPROFILE%\auto\setup.cmd

REM Set Noise Reduction = off
REM Set AGC to Slow (auto)

SET CAT=NR00;GT04;
echo| set /p="%CAT%"> %COMPORT%