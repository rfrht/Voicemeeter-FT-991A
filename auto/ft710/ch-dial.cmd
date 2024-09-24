@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set encoder in VFO mode to CH Dial
type %USERPROFILE%\auto\ch-dial.bin> %COMPORT%