@echo on
rmdir c:\audio\cq
mklink /d c:\audio\cq cq-pt

rmdir %USERPROFILE%\auto\current
mklink /d %USERPROFILE%\auto\current %USERPROFILE%\auto\ft710

copy /y %USERPROFILE%\auto\setup-710.cmd %USERPROFILE%\auto\setup.cmd