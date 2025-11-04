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
echo  4. Performance optimization
echo  5. System and File Explorer settings
echo  6. Desktop and Lock screen settings
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
echo  4. Performance optimization
echo ========================================
echo.
echo This will optimize visual effects and system settings:
echo.
echo [Visual Effects - Only 4 items enabled]
echo  - Desktop icon label shadows
echo  - Show thumbnails instead of icons
echo  - Show shadows under windows
echo  - Smooth edges of screen fonts
echo  - All other visual effects will be disabled
echo.
echo [Startup and Recovery]
echo  - Change OS list display time: 30s to 3s
echo  - Change debug info: Small memory dump (256KB)
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing performance optimization...
echo.

echo [1/2] Optimizing visual effects...
:: Set to Custom visual effects mode
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f >nul 2>&1

:: Disable all visual effects first (set to 0)
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f >nul 2>&1

:: Now enable only the 4 required visual effects
:: 1. Desktop icon label shadows (ListviewShadow)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "1" /f >nul 2>&1

:: 2. Show thumbnails instead of icons (IconsOnly = 0 means show thumbnails)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f >nul 2>&1

:: 3. Show shadows under windows (part of UserPreferencesMask)
:: 4. Smooth edges of screen fonts (FontSmoothing)
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothingType" /t REG_DWORD /d "2" /f >nul 2>&1

:: UserPreferencesMask for enabling shadows under windows and icon shadows
:: This binary value controls multiple visual effects
:: 9012078010000000 = Custom with icon shadows, window shadows, and font smoothing
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012078010000000" /f >nul 2>&1

echo Visual effects optimized successfully

echo [2/2] Configuring startup and recovery settings...
:: Set OS list display timeout to 3 seconds
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v "Timeout" /t REG_DWORD /d "3" /f >nul 2>&1
bcdedit /timeout 3 >nul 2>&1

:: Set debug info to Small memory dump (256KB)
:: CrashDumpEnabled: 3 = Small memory dump
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d "3" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl" /v "MinidumpDir" /t REG_EXPAND_SZ /d "%%SystemRoot%%\Minidump" /f >nul 2>&1

echo Startup and recovery settings configured successfully

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  IMPORTANT: Some changes may require
echo  restarting Explorer or rebooting
echo  your computer to take full effect.
echo ========================================
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_5
cls
echo ========================================
echo  5. System and File Explorer settings
echo ========================================
echo.
echo This will configure system and File Explorer settings:
echo.
echo [System Settings]
echo  - Change PC name to: VMFort-VDI
echo.
echo [File Explorer Settings]
echo  - Open File Explorer to: This PC (instead of Home)
echo.
echo [Privacy Options]
echo  - Disable: Show recently used files
echo  - Disable: Show frequently used folders
echo  - Disable: Show files from Office.com
echo  - Clear File Explorer history
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing system and File Explorer settings...
echo.

echo [1/4] Changing PC name to VMFort-VDI...
:: Change computer name using WMIC
wmic computersystem where name="%computername%" call rename name="VMFort-VDI" >nul 2>&1
if %errorLevel% equ 0 (
    echo PC name will be changed to VMFort-VDI after reboot
) else (
    :: Alternative method using registry
    reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t REG_SZ /d "VMFort-VDI" /f >nul 2>&1
    reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t REG_SZ /d "VMFort-VDI" /f >nul 2>&1
    reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Hostname" /t REG_SZ /d "VMFort-VDI" /f >nul 2>&1
    reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t REG_SZ /d "VMFort-VDI" /f >nul 2>&1
    echo PC name configured via registry
)

echo [2/4] Setting File Explorer to open to This PC...
:: LaunchTo: 1 = This PC, 2 = Quick access (Home)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f >nul 2>&1
echo File Explorer will now open to This PC

echo [3/4] Disabling File Explorer privacy options...
:: Disable recently used files in Quick access
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable frequently used folders in Quick access
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable Office.com files
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowCloudFilesInQuickAccess" /t REG_DWORD /d "0" /f >nul 2>&1

echo Privacy options disabled

echo [4/4] Clearing File Explorer history...
:: Clear recent files list
reg.exe delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f >nul 2>&1

:: Clear Run history
reg.exe delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f >nul 2>&1

:: Clear typed paths
reg.exe delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f >nul 2>&1

:: Delete recent items folder contents
del /q /f "%APPDATA%\Microsoft\Windows\Recent\*" >nul 2>&1
del /q /f "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*" >nul 2>&1
del /q /f "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*" >nul 2>&1

echo File Explorer history cleared

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  IMPORTANT: Reboot required!
echo  Please restart your computer to apply
echo  the PC name change and other settings.
echo ========================================
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:MENU_6
cls
echo ========================================
echo  6. Desktop and Lock screen settings
echo ========================================
echo.
echo This will configure desktop and lock screen settings:
echo.
echo [Desktop Background Settings]
echo  - Set background personalization to: Picture
echo.
echo [Color Settings]
echo  - Disable transparency effects
echo  - Mode: Custom (Windows: Dark, Apps: Light)
echo.
echo [Desktop Icons]
echo  - Show Control Panel icon
echo  - Show This PC icon
echo.
echo [Lock Screen Settings]
echo  - Set lock screen to: Picture
echo  - Lock screen status: None
echo  - Disable tips and fun facts on lock screen
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing desktop and lock screen settings...
echo.

echo [1/5] Setting desktop background to Picture mode...
:: Set wallpaper style to Picture (not Slideshow)
:: WallpaperStyle: 0=Center, 2=Stretch, 6=Fit, 10=Fill, 22=Span
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "WallpaperStyle" /t REG_SZ /d "10" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "TileWallpaper" /t REG_SZ /d "0" /f >nul 2>&1

:: Disable slideshow mode
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers" /v "BackgroundType" /t REG_DWORD /d "0" /f >nul 2>&1
echo Desktop background set to Picture mode

echo [2/5] Configuring color settings...
:: Disable transparency effects
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f >nul 2>&1
echo Transparency effects disabled

:: Set to Custom mode with Windows Dark and Apps Light
:: AppsUseLightTheme: 1=Light, 0=Dark
:: SystemUsesLightTheme: 1=Light, 0=Dark
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "1" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f >nul 2>&1
echo Color mode set to Custom (Windows: Dark, Apps: Light)

echo [3/5] Adding desktop icons...
:: Show Control Panel icon on desktop
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d "0" /f >nul 2>&1

:: Show This PC (Computer) icon on desktop
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d "0" /f >nul 2>&1

:: Refresh desktop to apply icon changes
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d "0" /f >nul 2>&1
echo Desktop icons added (Control Panel, This PC)

echo [4/5] Configuring lock screen settings...
:: Set lock screen to Picture (not Slideshow or Windows Spotlight)
:: 0 = Picture, 1 = Slideshow, 2 = Windows Spotlight
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable lock screen status (detailed/simple status)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lock Screen" /v "SlideshowEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Set lock screen status to None by disabling all status apps
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Apps" /f >nul 2>&1
for /L %%i in (0,1,7) do (
    reg.exe delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Apps\%%i" /f >nul 2>&1
)

echo Lock screen set to Picture mode with no status

echo [5/5] Disabling lock screen tips and fun facts...
:: Disable "Get fun facts, tips, and more on your lock screen"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable Windows Spotlight on lock screen
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "LockScreenOverlayEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable tips and tricks on lock screen
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
echo Lock screen tips and fun facts disabled

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  NOTE: Desktop icons will appear after
echo  restarting Explorer or rebooting.
echo  Some changes may require a reboot.
echo ========================================
echo.
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
