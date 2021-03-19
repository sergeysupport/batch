@echo off
chcp 65001 >nul

echo =====================================
echo copylockscreen.bat

:: копирует файлы более 300кб без замены
ForFiles /p "%userprofile%\appdata\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" /s /c "cmd /c if @fsize GTR 300000 echo [%date% %time:~-11,2%-%time:~-8,2%] copy @file && xcopy /d /s @file %userprofile%\Pictures\*.jpg" 
:: >> "c:\ENTER PATH\logs\copylockscreen.log"

echo copying wallpapers done!
echo =====================================
timeout 1 >nul
exit /b


