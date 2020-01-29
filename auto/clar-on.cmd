@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8
set "CAT=RT1;"
echo| set /p="%CAT%"> COM4