@echo off
title WhatsApp Clone - Launcher
cd /d "%~dp0"

echo ======================================================
echo           WhatsApp Clone - Auto Launcher
echo ======================================================
echo.

where flutter >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Flutter SDK eka oyaage computer eke PATH ekata add vela na wage!
    echo.
    echo Karunakara Flutter SDK eka download karala PATH ekata danna:
    echo https://docs.flutter.dev/get-started/install/windows
    echo.
    pause
    exit /b
)

echo [1/3] Platform files check karamin...
call flutter create . --platforms=windows,web,android

echo.
echo [2/3] Packages download karamin...
call flutter pub get

echo.
echo [3/3] App eka Chrome Browser eken launch karamin...
echo (Meeka run unama WhatsApp Clone eka auto open wewi)
echo.
call flutter run -d chrome

pause
