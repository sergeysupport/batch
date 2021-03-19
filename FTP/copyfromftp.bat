@echo off
chcp 65001 >nul
cd c:\ENTER PATH\ftp
echo =====================================
echo copyfromftp.bat
echo ======================================================================== > "c:\ENTER PATH\logs\ftpstatus.log"
echo [%date% %time:~-11,2%-%time:~-8,2%] >> "c:\ENTER PATH\logs\ftpstatus.log"
echo ======================================================================== >> "c:\ENTER PATH\logs\ftpstatus.log"
::копирование с фтп
ftp -s:commands.txt -n >> "c:\ENTER PATH\logs\ftpstatus.log"
echo ======================================================================== >> "c:\ENTER PATH\logs\ftpstatus.log"
:: проверка что фтп отработал без ошибок. путем сравнивания времени изменения файла с текущим временем
ForFiles /p "C:\ENTER PATH" /m FILENAME.* /c "cmd /c if @ftime==%time:~-11,2%:%time:~-8,2%:%time:~6,2% echo successfull copyed! @file time is @ftime"
ForFiles /p "C:\ENTER PATH" /m FILENAME.* /c "cmd /c if @ftime==%time:~-11,2%:%time:~-8,2%:%time:~6,2% echo [%date% %time:~-11,2%-%time:~-8,2%] successfull copyed! @file time is @ftime" >> C:\ENTER PATH\logs\copyfromftp.log
ForFiles /p "C:\ENTER PATH" /m FILENAME.* /c "cmd /c if NOT @ftime==%time:~-11,2%:%time:~-8,2%:%time:~6,2% echo FTP copying failed, check FTP status! @file time is @fdate @ftime current time is %date% %time:~-11,2%:%time:~-8,2%:%time:~6,2%"
ForFiles /p "C:\ENTER PATH" /m FILENAME.* /c "cmd /c if NOT @ftime==%time:~-11,2%:%time:~-8,2%:%time:~6,2% echo [%date% %time:~-11,2%-%time:~-8,2%] FTP copying failed, check FTP status! @file time is @fdate @ftime current time is %date% %time:~-11,2%:%time:~-8,2%:%time:~6,2%" >> C:\ENTER PATH\logs\copyfromftp.log
echo copying ftp base done!
echo =====================================
timeout 1 >nul
exit /b
