@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set Contour to 290 Hz; Enable Contour
set CAT=CO010290;CO000001;
echo| set /p="%CAT%"> %COMPORT%