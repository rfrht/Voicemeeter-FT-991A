@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8 > nul
set CAT=PC100;
echo| set /p="%CAT%"> COM4