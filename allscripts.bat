@echo off
chcp 65001 >nul

cd c:\ENTER PATH\bat
call backup.bat
cd c:\ENTER PATH\bat
call clearinglogs.bat
cd c:\ENTER PATH\bat
call clearoldbackups.bat
cd c:\ENTER PATH\bat
call copylockscreen.bat
cd c:\ENTER PATH\bat
call ftpbackups.bat
cd c:\ENTER PATH\bat\ftp
call copyfromftp.bat
cd c:\ENTER PATH\bat
call removeemptylogstrings.bat
pause
exit
