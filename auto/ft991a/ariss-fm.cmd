@echo off
call %USERPROFILE%\auto\setup.cmd

REM Freq UP; FM; Tone ENC; Tone 67; A=B; Freq DN; FM; Tone OFF

set CAT=FA145990000;MD0B;CT02;CN00000;AB;FA437800000;MD0B;CT00;

echo| set /p="%CAT%"> %COMPORT%