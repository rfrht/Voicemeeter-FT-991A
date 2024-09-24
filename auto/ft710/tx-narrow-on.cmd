@echo off
call %USERPROFILE%\auto\setup.cmd

REM TX BPF SEL 400-2600

set CAT=EX0101134;
echo| set /p="%CAT%"> %COMPORT%