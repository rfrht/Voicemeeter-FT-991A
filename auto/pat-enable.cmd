@echo off

taskkill /IM "hdsdr*"

ping -n 2 localhost > nul

rtl_biast -d 0 -b 0 -g 5

start C:\Ham\HDSDR\HDSDR.exe