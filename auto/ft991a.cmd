@echo on
rmdir c:\audio\cq
mklink /d c:\audio\cq cq-pt

rmdir %USERPROFILE%\auto\current
mklink /d %USERPROFILE%\auto\current %USERPROFILE%\auto\ft991a

copy /y %USERPROFILE%\auto\setup-991.cmd %USERPROFILE%\auto\setup.cmd