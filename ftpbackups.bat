@echo off
chcp 65001 >nul

echo =====================================
echo ftpbackups.bat

:: копирует основной бэкап в папку с бэкапами по датам,  проверяя что основной бэкап новее имеющегося
robocopy /xo /njh /njs /ndl /nc /ns "C:\ENTER PATH\" "C:\ENTER PATH\backups" "ENTERFILENAME.*"

:: если копирование не выполнено (дата файлов идентична) прекращает работу
if %ERRORLEVEL% EQU 0 echo no files to backup, files up to date! && (echo [%date% %time:~-11,2%-%time:~-8,2%] no files to backup, files up to date! >> c:\ENTERPATH\ftpbackups.log) && exit /b

:: если файл скопирован, делает его копию и добавляет в название дату
if %ERRORLEVEL% EQU 1 copy "C:\ENTER PATH\ENTERFILENAME" "C:\ENTER PATH\backups\FILENAME__%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2%.*" && echo created ENTERFILENAME__%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2% && (echo [%date% %time:~-11,2%-%time:~-8,2%] created FILENAME__%date:~0,2%_%date:~3,2%_%date:~6,4%_%time:~-11,2%-%time:~-8,2% >> c:\ENTER PATH\ftpbackups.log)

echo backup main file done!
echo =====================================

timeout 1 >nul
exit /b