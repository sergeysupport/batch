@echo off
chcp 65001 >nul

echo =====================================
echo clearinglogs.bat

ForFiles /p "%userprofile%\Logs" /s /d -7 /c "cmd /c echo [%date% %time:~-11,2%-%time:~-8,2%] files for remove @file && if @isdir==FALSE del /s /q @path" >> "c:\ENTER PATH\logs\clearinglogs.log" 2>nul
ForFiles /p "%userprofile%\Logs" /s /d -7 /c "cmd /c if @isdir==TRUE echo [%date% %time:~-11,2%-%time:~-8,2%] removed dir @file" >> "c:\ENTER PATH\logs\clearinglogs.log" 2>nul 
ForFiles /p "%userprofile%\Logs" /s /d -7 /c "cmd /c if @isdir==TRUE rd /s /q @path" >> "c:\ENTER PATH\logs\clearinglogs.log" 2>nul

echo removing old logs done!
echo =====================================
timeout 1 >nul
exit /b











