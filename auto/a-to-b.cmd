@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set VFO B to VFO A content
set "CAT=AB;"
echo| set /p="%CAT%"> %COMPORT%