@echo off
call %USERPROFILE%\auto\setup.cmd

Recall Memory 020, menu 076 RTS, Vox 30 ms

set CAT=MC020;EX0761;EX1470030;

echo| set /p="%CAT%"> %COMPORT%

cd c:\ham\direwolf
start direwolf.exe