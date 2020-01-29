@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8 > NUL
SET CAT=BC00;
echo| set /p="%CAT%"> COM4