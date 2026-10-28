@echo off
title WhatsApp Clone - Android APK Builder
cd /d "%~dp0"

echo ======================================================
echo       WhatsApp Clone - Android APK Generator
echo ======================================================
echo.

where flutter >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Flutter SDK eka PATH ekata add vela na!
    echo.
    pause
    exit /b
)

echo [1/3] Platform files generate karamin...
call flutter create . --platforms=android

echo.
echo [2/3] Dependencies sync karamin...
call flutter pub get

echo.
echo [3/3] Android APK eka build karamin (tikak wela yay)...
call flutter build apk

echo.
echo ======================================================
echo APK eka hadala ivarayi!
echo Oyaata APK eka ganna puluwan menna me location eken:
echo build\app\outputs\flutter-apk\app-release.apk
echo ======================================================
echo.
pause
