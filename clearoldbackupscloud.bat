@echo off
chcp 65001 >nul
echo =====================================
echo clearoldbackupscloud.bat

cd "C:\ENTER PATH\backups\"
ForFiles /p "C:\ENTER PATH\backups" /d -7 /c "cmd /c if @isdir==FALSE echo deleted @file && if @isdir==FALSE del /a @path && (if not exist @file echo [%date% %time:~-11,2%-%time:~-8,2%] deleted @file>>"log\clearoldbackupscloud.log")"

:: ищет файлы старше 7 дней
:: выводит текстом поиск старых файлов
:: удаляет найденный файл без подтверждения
:: включение подтверждения - del /p
:: проверяет, если файл больше не существует, делает запись в лог о его удалении

echo removing old backups from cloud done!
echo =====================================

timeout 1 >nul
exit /b