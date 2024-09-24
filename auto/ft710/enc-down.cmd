@echo off
call %USERPROFILE%\auto\setup.cmd
REM Encoder Down
SET CAT=ED801;
echo| set /p="%CAT%"> %COMPORT%