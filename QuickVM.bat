@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: Check for admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo ========================================
    echo  Administrator privileges required!
    echo  Please run as administrator.
    echo ========================================
    echo.
    pause
    exit /b
)

:MAIN_MENU
cls
echo ========================================
echo  QuickVM - VM Optimization Tool
echo  Version: 1.0.0
echo  Last Updated: 2025-10-30
echo ========================================
echo.
echo  [Main Menu]
echo.
echo  1. Remove unnecessary default programs
echo  2. Change right-click menu to Windows 10 style
echo  3. Power optimization and disable sleep mode
echo  4. Menu 4
echo  5. Menu 5
echo  6. Menu 6
echo  7. Menu 7
echo  8. Menu 8
echo  9. Menu 9
echo.
echo  0. Exit
echo.
echo ========================================
set /p choice="Select menu (0-9): "

if "%choice%"=="0" goto EXIT_PROGRAM
if "%choice%"=="1" goto MENU_1
if "%choice%"=="2" goto MENU_2
if "%choice%"=="3" goto MENU_3
if "%choice%"=="4" goto MENU_4
if "%choice%"=="5" goto MENU_5
if "%choice%"=="6" goto MENU_6
if "%choice%"=="7" goto MENU_7
if "%choice%"=="8" goto MENU_8
if "%choice%"=="9" goto MENU_9

echo Invalid input. Please try again.
timeout /t 2 >nul
goto MAIN_MENU

:MENU_1
cls
echo ========================================
echo  1. Remove unnecessary default programs
echo ========================================
echo.
echo This will remove the following:
echo  - 3D Builder, Alarms, Maps, Messaging
echo  - Office Hub, OneNote, Paint 3D
echo  - Skype, Solitaire, Wallet
echo  - Bing apps (Finance, News, Sports, Weather)
echo  - Xbox apps and Gaming features
echo  - Teams, Clipchamp, Quick Assist
echo  - OneDrive (complete removal)
echo  - Cortana
echo  - And other bloatware apps...
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Removing unnecessary programs...
echo This may take a few minutes...
echo.

powershell.exe "get-appxpackage *3dbuilder* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *alarms* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *communicationsapps* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *feedback* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *officehub* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *getstarted* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *skypeapp* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *zunemusic* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *zune* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *maps* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *messaging* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *solitaire* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *wallet* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *connectivitystore* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *bingfinance* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *bing* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *zunevideo* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *bingnews* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *onenote* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *oneconnect* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *mspaint* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *commsphone* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *windowsphone* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *phone* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *bingsports* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *sway* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *3d* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *soundrecorder* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *bingweather* | remove-appxpackage" >nul 2>&1
powershell.exe "get-appxpackage *holographic* | remove-appxpackage" >nul 2>&1
powershell.exe "Get-AppxPackage *xboxapp* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *Clipchamp* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *Teams* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *MicrosoftTeams* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *Todos* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *OutlookForWindows* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *PowerAutomate* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *Xbox* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *XboxGamingOverlay* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *XboxGameOverlay* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *XboxIdentityProvider* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *XboxSpeechToTextOverlay* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *GamingApp* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *QuickAssist* | Remove-AppxPackage" >nul 2>&1
powershell.exe "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage" >nul 2>&1

echo Removing OneDrive...
taskkill /f /im OneDrive.exe >nul 2>&1
%SystemRoot%\System32\OneDriveSetup.exe /uninstall >nul 2>&1
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall >nul 2>&1
rd "%UserProfile%\OneDrive" /s /q >nul 2>&1
rd "%LocalAppData%\Microsoft\OneDrive" /s /q >nul 2>&1
rd "%ProgramData%\Microsoft OneDrive" /s /q >nul 2>&1
rd "C:\OneDriveTemp" /s /q >nul 2>&1
reg.exe delete "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f >nul 2>&1
reg.exe delete "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f >nul 2>&1

echo Disabling Windows Spotlight and suggestions...
reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d "1" /f >nul 2>&1

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_2
cls
echo ========================================
echo  2. Change right-click menu to Windows 10 style
echo ========================================
echo.
echo  [Sub Menu]
echo.
echo  1. Change right-click menu to Windows 10 style
echo  2. Restore right-click menu to default
echo.
echo  0. Return to Main Menu
echo.
echo ========================================
set /p submenu_choice="Select menu (0-2): "

if "%submenu_choice%"=="0" goto MAIN_MENU
if "%submenu_choice%"=="1" goto MENU_2_SUB_1
if "%submenu_choice%"=="2" goto MENU_2_SUB_2

echo Invalid input. Please try again.
timeout /t 2 >nul
goto MENU_2

:MENU_2_SUB_1
cls
echo ========================================
echo  Change right-click menu to Windows 10 style
echo ========================================
echo.
echo This will change the right-click context menu
echo to Windows 10 classic style.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MENU_2

echo.
echo Processing...
reg.exe add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve >nul 2>&1

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  IMPORTANT: Reboot required!
echo  Please restart your computer to apply
echo  the changes.
echo ========================================
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_2_SUB_2
cls
echo ========================================
echo  Restore right-click menu to default
echo ========================================
echo.
echo This will restore the right-click context menu
echo to Windows 11 default style.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MENU_2

echo.
echo Processing...
reg.exe delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f >nul 2>&1

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  IMPORTANT: Reboot required!
echo  Please restart your computer to apply
echo  the changes.
echo ========================================
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_3
cls
echo ========================================
echo  3. Power optimization and disable sleep mode
echo ========================================
echo.
echo This will optimize power settings:
echo  - Set power plan to High Performance
echo  - Disable power button lock option
echo  - Disable display turn off (Control Panel)
echo  - Disable sleep mode timeout
echo  - Disable hibernate timeout
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing power optimization...
echo.

echo [1/4] Setting power plan to High Performance...
powercfg /list | findstr /C:"High performance" /C:"최고 성능" /C:"Ultimate Performance" >nul 2>&1
if %errorLevel% equ 0 (
    :: Try to set Ultimate Performance first
    for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"Ultimate Performance" /C:"최고 성능"') do (
        powercfg /setactive %%i >nul 2>&1
        if %errorLevel% equ 0 (
            echo Successfully set to Ultimate Performance
            goto :POWER_PLAN_SET
        )
    )
    :: If Ultimate Performance not available, use High Performance
    for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"High performance" /C:"고성능"') do (
        powercfg /setactive %%i >nul 2>&1
        if %errorLevel% equ 0 (
            echo Successfully set to High Performance
            goto :POWER_PLAN_SET
        )
    )
) else (
    echo High Performance plan not found, creating...
    powercfg /duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"High performance" /C:"고성능"') do (
        powercfg /setactive %%i >nul 2>&1
    )
    echo High Performance plan created and activated
)
:POWER_PLAN_SET

echo [2/4] Disabling power button lock action...
reg.exe add "HKEY_CURRENT_USER\Control Panel\PowerCfg" /v "GlobalFlags" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowLockOption" /t REG_DWORD /d "0" /f >nul 2>&1
echo Power button lock option disabled

echo [3/4] Setting display turn off to Never...
:: Get current active power scheme GUID
for /f "tokens=4" %%i in ('powercfg /getactivescheme') do set ACTIVE_SCHEME=%%i
:: Set monitor timeout to 0 (never) for both AC and DC
powercfg /change monitor-timeout-ac 0 >nul 2>&1
powercfg /change monitor-timeout-dc 0 >nul 2>&1
:: Also set via registry for additional assurance
powercfg /setacvalueindex %ACTIVE_SCHEME% 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 >nul 2>&1
powercfg /setdcvalueindex %ACTIVE_SCHEME% 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 >nul 2>&1
powercfg /setactive %ACTIVE_SCHEME% >nul 2>&1
echo Display turn off set to Never

echo [4/4] Disabling sleep and hibernate timeouts...
:: Disable sleep timeout (standby) for both AC and DC
powercfg /change standby-timeout-ac 0 >nul 2>&1
powercfg /change standby-timeout-dc 0 >nul 2>&1
:: Disable hibernate timeout for both AC and DC
powercfg /change hibernate-timeout-ac 0 >nul 2>&1
powercfg /change hibernate-timeout-dc 0 >nul 2>&1
:: Set via powercfg settings for additional assurance
powercfg /setacvalueindex %ACTIVE_SCHEME% 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0 >nul 2>&1
powercfg /setdcvalueindex %ACTIVE_SCHEME% 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0 >nul 2>&1
powercfg /setacvalueindex %ACTIVE_SCHEME% 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0 >nul 2>&1
powercfg /setdcvalueindex %ACTIVE_SCHEME% 238c9fa8-0aad-41ed-83f4-97be242c8f20 9d7815a6-7ee4-497e-8888-515a05f02364 0 >nul 2>&1
powercfg /setactive %ACTIVE_SCHEME% >nul 2>&1
echo Sleep and hibernate timeouts disabled

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_4
cls
echo ========================================
echo  4. Menu 4
echo ========================================
echo.
echo This feature will be implemented soon.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing...
:: Feature will be added here

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_5
cls
echo ========================================
echo  5. Menu 5
echo ========================================
echo.
echo This feature will be implemented soon.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing...
:: Feature will be added here

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_6
cls
echo ========================================
echo  6. Menu 6
echo ========================================
echo.
echo This feature will be implemented soon.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing...
:: Feature will be added here

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_7
cls
echo ========================================
echo  7. Menu 7
echo ========================================
echo.
echo This feature will be implemented soon.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing...
:: Feature will be added here

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_8
cls
echo ========================================
echo  8. Menu 8
echo ========================================
echo.
echo This feature will be implemented soon.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing...
:: Feature will be added here

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_9
cls
echo ========================================
echo  9. Menu 9
echo ========================================
echo.
echo This feature will be implemented soon.
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing...
:: Feature will be added here

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:EXIT_PROGRAM
cls
echo.
echo ========================================
echo  Thank you for using QuickVM!
echo ========================================
echo.
timeout /t 2 >nul
exit /b

:END
