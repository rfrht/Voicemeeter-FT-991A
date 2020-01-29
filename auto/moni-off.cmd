@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8 > NUL
SET CAT=ML0000;
echo| set /p="%CAT%"> COM4