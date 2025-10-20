@echo off
:: Korean Encoding Setting (CP949 = EUC-KR)
chcp 949 >nul 2>&1
setlocal enabledelayedexpansion

:: Program Information
set PROGRAM_NAME=QuickVM
set VERSION=1.0.0
set LAST_UPDATE=2025-10-20

:: Check Administrator Privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ============================================================
    echo [ERROR] Administrator privileges required
    echo ============================================================
    echo.
    echo This script requires administrator privileges.
    echo Please right-click and select "Run as administrator"
    echo.
    pause
    exit /b 1
)

:MAIN_MENU
cls
echo ============================================================
echo    %PROGRAM_NAME% - Windows VM Optimization Tool
echo ============================================================
echo.
echo    Version: %VERSION%
echo    Last Update: %LAST_UPDATE%
echo.
echo ============================================================
echo.
echo [Menu List]
echo.
echo  1. Power Settings and Sleep Mode Disable
echo  2. Optimization Item 2 (Planned)
echo  3. Optimization Item 3 (Planned)
echo  4. Optimization Item 4 (Planned)
echo  5. Optimization Item 5 (Planned)
echo  6. Optimization Item 6 (Planned)
echo  7. Optimization Item 7 (Planned)
echo  8. Optimization Item 8 (Planned)
echo  9. Optimization Item 9 (Planned)
echo.
echo  0. Exit Program
echo.
echo ============================================================
echo.

set /p menu_choice="Select menu (0-9): "

if "%menu_choice%"=="0" goto EXIT
if "%menu_choice%"=="1" goto MENU_1
if "%menu_choice%"=="2" goto MENU_2
if "%menu_choice%"=="3" goto MENU_3
if "%menu_choice%"=="4" goto MENU_4
if "%menu_choice%"=="5" goto MENU_5
if "%menu_choice%"=="6" goto MENU_6
if "%menu_choice%"=="7" goto MENU_7
if "%menu_choice%"=="8" goto MENU_8
if "%menu_choice%"=="9" goto MENU_9

echo.
echo [ERROR] Invalid input. Please enter a number between 0-9.
timeout /t 2 /nobreak >nul
goto MAIN_MENU

:MENU_1
cls
echo ============================================================
echo    Power Settings and Sleep Mode Disable
echo ============================================================
echo.
echo [Description]
echo  This will configure the following power settings:
echo.
echo  1. Set power plan to High Performance
echo  2. Disable hibernation
echo  3. Disable screen off, screen lock, and sleep mode
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_1
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_1

:MENU_2
cls
echo ============================================================
echo    Optimization Item 2
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_2
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_2

:MENU_3
cls
echo ============================================================
echo    Optimization Item 3
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_3
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_3

:MENU_4
cls
echo ============================================================
echo    Optimization Item 4
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_4
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_4

:MENU_5
cls
echo ============================================================
echo    Optimization Item 5
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_5
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_5

:MENU_6
cls
echo ============================================================
echo    Optimization Item 6
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_6
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_6

:MENU_7
cls
echo ============================================================
echo    Optimization Item 7
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_7
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_7

:MENU_8
cls
echo ============================================================
echo    Optimization Item 8
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_8
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_8

:MENU_9
cls
echo ============================================================
echo    Optimization Item 9
echo ============================================================
echo.
echo [Description]
echo  - This optimization will be added soon.
echo.
echo ============================================================
echo.

set /p apply_choice="Apply this optimization? (Y/N): "

if /i "%apply_choice%"=="Y" (
    call :APPLY_MENU_9
    goto MAIN_MENU
)
if /i "%apply_choice%"=="N" (
    goto MAIN_MENU
)

echo.
echo [ERROR] Invalid input. Please enter Y or N.
timeout /t 2 /nobreak >nul
goto MENU_9

:: ====================================
:: Apply Functions
:: ====================================

:APPLY_MENU_1
echo.
echo ============================================================
echo [Step 1/3] Setting power plan to High Performance...
echo ============================================================

:: Get High Performance power scheme GUID
for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"High performance" /C:"고성능"') do set HighPerfGUID=%%i

:: If High Performance plan doesn't exist, use default GUID
if not defined HighPerfGUID set HighPerfGUID=8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

:: Set active power scheme to High Performance
powercfg /setactive %HighPerfGUID%

if %errorlevel% equ 0 (
    echo [OK] Power plan set to High Performance
) else (
    echo [WARNING] Failed to set High Performance plan
)
echo.

echo ============================================================
echo [Step 2/3] Disabling hibernation...
echo ============================================================

:: Disable hibernation
powercfg /hibernate off

if %errorlevel% equ 0 (
    echo [OK] Hibernation disabled
) else (
    echo [WARNING] Failed to disable hibernation
)
echo.

echo ============================================================
echo [Step 3/3] Disabling screen off, lock, and sleep mode...
echo ============================================================

:: Disable monitor timeout (AC power)
powercfg /change monitor-timeout-ac 0
:: Disable monitor timeout (DC power - battery)
powercfg /change monitor-timeout-dc 0

:: Disable disk timeout (AC power)
powercfg /change disk-timeout-ac 0
:: Disable disk timeout (DC power)
powercfg /change disk-timeout-dc 0

:: Disable standby timeout (AC power)
powercfg /change standby-timeout-ac 0
:: Disable standby timeout (DC power)
powercfg /change standby-timeout-dc 0

:: Disable hibernate timeout (AC power)
powercfg /change hibernate-timeout-ac 0
:: Disable hibernate timeout (DC power)
powercfg /change hibernate-timeout-dc 0

echo [OK] Screen off, lock, and sleep mode disabled
echo.

echo ============================================================
echo [Complete] Power settings optimization completed!
echo ============================================================
echo.
echo Summary:
echo  - Power plan: High Performance
echo  - Hibernation: Disabled
echo  - Screen timeout: Never
echo  - Sleep mode: Disabled
echo.
pause
goto :eof

:APPLY_MENU_2
echo.
echo [Applying] Running Optimization Item 2...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 2 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_3
echo.
echo [Applying] Running Optimization Item 3...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 3 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_4
echo.
echo [Applying] Running Optimization Item 4...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 4 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_5
echo.
echo [Applying] Running Optimization Item 5...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 5 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_6
echo.
echo [Applying] Running Optimization Item 6...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 6 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_7
echo.
echo [Applying] Running Optimization Item 7...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 7 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_8
echo.
echo [Applying] Running Optimization Item 8...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 8 has been applied.
echo.
pause
goto :eof

:APPLY_MENU_9
echo.
echo [Applying] Running Optimization Item 9...
:: Add your optimization script here
timeout /t 2 /nobreak >nul
echo [Complete] Optimization Item 9 has been applied.
echo.
pause
goto :eof

:EXIT
cls
echo QuickVM is shutting down...
timeout /t 1 /nobreak >nul
exit /b 0
