@echo off
chcp 65001 >nul

echo =====================================
echo clearoldbackups.bat

ForFiles /p "c:\ENTER PATH" /s /d -7 /c "cmd /c if @isdir==FALSE echo [%date% %time:~-11,2%-%time:~-8,2%] Searching for old files... && if @isdir==FALSE del @path && (if not exist @file echo [%date% %time:~-11,2%-%time:~-8,2%] deleted @file>> "c:\ENTER PATH\logs\clearoldbackups.log")" 2>nul

:: ищет файлы старше 7 дней
:: выводит текстом поиск старых файлов
:: удаляет найденный файл без подтверждения
:: включение подтверждения - del /p
:: проверяет, если файл больше не существует, делает запись в лог о его удалении

echo removing old backups done!
echo =====================================
timeout 1 >nul
exit /b