@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8 > NUL
set "CAT=VM;"
echo| set /p="%CAT%"> COM4