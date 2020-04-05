@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set Contour to 580 Hz; Enable Contour
set CAT=CO010580;CO000001;
echo| set /p="%CAT%"> %COMPORT%