@echo off

::батник удаляет в логах пустые строки
chcp 65001 >nul

echo =====================================
echo removeemptylogstrings.bat

::backup.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\backup.log") do (echo(%%a)>>~.log
move /y  ~.log "C:\ENTER PATH\logs\backup.log" 2>nul 1>nul

::clearinglogs.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\clearinglogs.log") do (echo(%%a)>>~.log 
move /y  ~.log "C:\ENTER PATH\logs\clearinglogs.log" 2>nul 1>nul

::clearoldbackups.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\clearoldbackups.log") do (echo(%%a)>>~.log
move /y  ~.log "C:\ENTER PATH\logs\clearoldbackups.log" 2>nul 1>nul

::copyfromftp.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\copyfromftp.log") do (echo(%%a)>>~.log
move /y  ~.log "C:\ENTER PATH\logs\copyfromftp.log" 2>nul 1>nul

::copylockscreen.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\copylockscreen.log") do (echo(%%a)>>~.log
move /y  ~.log "C:\ENTER PATH\logs\copylockscreen.log" 2>nul 1>nul

::ftpstatus.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\ftpstatus.log") do (echo(%%a)>>~.log
move /y  ~.log "C:\ENTER PATH\logs\ftpstatus.log" 2>nul 1>nul

::clearoldbackupscloud.log
for /f "usebackq tokens=* delims=" %%a in ("C:\ENTER PATH\log\clearoldbackupscloud.log") do (echo(%%a)>>~.log
move /y  ~.log "C:\ENTER PATH\log\clearoldbackupscloud.log" 2>nul 1>nul

echo done!
echo =====================================
timeout 1 >nul
exit /b