@echo off
call %USERPROFILE%\auto\setup.cmd

REM TX BPF SEL 200-2800

set CAT=EX0101132;
echo| set /p="%CAT%"> %COMPORT%