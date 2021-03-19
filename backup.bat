@echo off
chcp 65001 >nul

echo =====================================
echo backup.bat

:: ENTERFILENAME to c:\
echo [%date% %time:~-11,2%-%time:~-8,2%] copying ENTERFILENAME_%username%_%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2% to c:\ENTER PATH\backup... >> "c:\ENTER PATH\ENTERFILENAME.log"
copy /y "c:\ENTER PATH" "c:\ENTER PATH\ENTERFILENAME_%username%_%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2%" >> "c:\ENTER PATH\ENTERFILENAME.log"

:: ENTERFILENAME to c:\
echo [%date% %time:~-11,2%-%time:~-8,2%] copying ENTERFILENAME_%username%_%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2% to c:\ENTER PATH\backup... >> "c:\ENTER PATH\ENTERFILENAME.log"
copy /y "c:\ENTER PATH" "c:\ENTER PATH\ENTERFILENAME_%username%_%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2%" >> "c:\ENTER PATH\ENTERFILENAME.log"

:: ENTERFILENAME to c:\
echo [%date% %time:~-11,2%-%time:~-8,2%] copying ENTERFILENAME_%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2% to c:\ENTER PATH\backup... >> "c:\ENTER PATH\ENTERFILENAME.log"
copy /y "C:\ENTER PATH" "c:\ENTER PATH\ENTERFILENAME_%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2%" >> "c:\ENTER PATH\ENTERFILENAME.log"

:: ENTERFILENAME to cloud
echo [%date% %time:~-11,2%-%time:~-8,2%] copying ENTERFILENAME_%username% to cloud... >> "c:\ENTER PATH\ENTERFILENAME.log"
copy /y "c:\ENTER PATH" "C:\ENTER PATH\ENTERFILENAME_%username%" >> "c:\ENTER PATH\ENTERFILENAME.log"

:: ENTERFILENAME to cloud
echo [%date% %time:~-11,2%-%time:~-8,2%] copying ENTERFILENAME_%username% to cloud... >> "c:\ENTER PATH\ENTERFILENAME.log"
copy /y "c:\ENTER PATH" "C:\ENTER PATH\ENTERFILENAME_%username%" >> "c:\ENTER PATH\ENTERFILENAME.log"

:: ENTERFILENAME to cloud
echo [%date% %time:~-11,2%-%time:~-8,2%] copying ENTERFILENAME to cloud... >> "c:\ENTER PATH\ENTERFILENAME.log"
copy /y "C:\ENTER PATH" "C:\ENTER PATH\backups\*.*" >> "c:\ENTER PATH\ENTERFILENAME.log"

echo making backup done!
echo =====================================

timeout 1 >nul
exit /b






