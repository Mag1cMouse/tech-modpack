@echo off
setlocal

cd /d "%~dp0"

echo Pulling changes from Git...
git pull

if errorlevel 1 (
    echo.
    echo Git pull failed.
    pause
    exit /b 1
)

echo.
echo Done.
pause