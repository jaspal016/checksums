@echo off
echo Please wait...
IF EXIST "01 checksums.txt" (del "01 checksums.txt")
for /F "usebackq delims=*" %%f IN (`dir /b`) do echo %%f >> "01 checksums.txt" & certutil -hashfile "%%f" | findstr "^[^S]" | findstr "^[^C]" >> "01 checksums.txt"