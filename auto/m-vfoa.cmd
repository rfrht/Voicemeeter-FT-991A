@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8 > NUL
set "CAT=MA;"
echo| set /p="%CAT%"> COM4