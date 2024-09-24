@echo off
call %USERPROFILE%\auto\setup.cmd
REM Set encoder in Memory mode to MCH
type %USERPROFILE%\auto\mch.bin> %COMPORT%