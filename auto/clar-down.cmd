@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8 > NUL
set LA=RD0010;
echo| set /p="%LA%"> COM4