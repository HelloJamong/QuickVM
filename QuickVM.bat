@echo off
:: UTF-8 인코딩 설정
chcp 65001 >nul
:: 지연 환경 변수 확장 활성화
setlocal enabledelayedexpansion

:: ============================================
:: 관리자 권한 확인
:: ============================================
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo ========================================
    echo  관리자 권한이 필요합니다!
    echo  관리자 권한으로 실행해주세요.
    echo ========================================
    echo.
    pause
    exit /b
)

:: ============================================
:: 메인 메뉴
:: ============================================
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
echo  7. Start menu and Taskbar settings
echo  8. Startup programs and Privacy settings
echo  9. Cleanup unnecessary files and optimize storage
echo.
echo  0. Exit
echo.
echo ========================================
set /p choice="Select menu (0-9): "

:: 메뉴 선택에 따라 해당 기능으로 이동
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

:: 잘못된 입력 처리
echo Invalid input. Please try again.
timeout /t 2 >nul
goto MAIN_MENU

:: ============================================
:: 메뉴 1: 불필요한 기본 프로그램 제거
:: ============================================
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

:: Windows 기본 앱 제거 (PowerShell AppxPackage 사용)

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

:: OneDrive 완전 제거
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

:: Windows Spotlight 및 제안 비활성화
echo Disabling Windows Spotlight and suggestions...
reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d "1" /f >nul 2>&1

echo.
echo Task completed successfully.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:: ============================================
:: 메뉴 2: 우클릭 메뉴를 Windows 10 스타일로 변경
:: ============================================
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

:: Windows 10 스타일 우클릭 메뉴로 변경
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
:: 레지스트리 값을 추가하여 Windows 10 스타일 적용
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

:: 우클릭 메뉴를 기본값(Windows 11 스타일)으로 복원
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
:: 레지스트리 키를 삭제하여 Windows 11 기본 스타일로 복원
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

:: ============================================
:: 메뉴 3: 전원 최적화 및 절전 모드 비활성화
:: ============================================
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

:: 고성능 전원 계획 설정
echo [1/4] Setting power plan to High Performance...
powercfg /list | findstr /C:"High performance" /C:"최고 성능" /C:"Ultimate Performance" >nul 2>&1
if %errorLevel% equ 0 (
    :: Ultimate Performance가 있으면 먼저 시도
    for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"Ultimate Performance" /C:"최고 성능"') do (
        powercfg /setactive %%i >nul 2>&1
        if %errorLevel% equ 0 (
            echo Successfully set to Ultimate Performance
            goto :POWER_PLAN_SET
        )
    )
    :: Ultimate Performance가 없으면 High Performance 사용
    for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"High performance" /C:"고성능"') do (
        powercfg /setactive %%i >nul 2>&1
        if %errorLevel% equ 0 (
            echo Successfully set to High Performance
            goto :POWER_PLAN_SET
        )
    )
) else (
    :: High Performance 계획이 없으면 생성
    echo High Performance plan not found, creating...
    powercfg /duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    for /f "tokens=4" %%i in ('powercfg /list ^| findstr /C:"High performance" /C:"고성능"') do (
        powercfg /setactive %%i >nul 2>&1
    )
    echo High Performance plan created and activated
)
:POWER_PLAN_SET

:: 전원 버튼 잠금 옵션 비활성화
echo [2/4] Disabling power button lock action...
reg.exe add "HKEY_CURRENT_USER\Control Panel\PowerCfg" /v "GlobalFlags" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowLockOption" /t REG_DWORD /d "0" /f >nul 2>&1
echo Power button lock option disabled

:: 디스플레이 끄기를 '안 함'으로 설정
echo [3/4] Setting display turn off to Never...
:: 현재 활성 전원 구성표 GUID 가져오기
for /f "tokens=4" %%i in ('powercfg /getactivescheme') do set ACTIVE_SCHEME=%%i
:: 모니터 타임아웃을 0(안 함)으로 설정 (AC 및 DC 모두)
powercfg /change monitor-timeout-ac 0 >nul 2>&1
powercfg /change monitor-timeout-dc 0 >nul 2>&1
:: 레지스트리를 통해서도 설정
powercfg /setacvalueindex %ACTIVE_SCHEME% 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 >nul 2>&1
powercfg /setdcvalueindex %ACTIVE_SCHEME% 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 0 >nul 2>&1
powercfg /setactive %ACTIVE_SCHEME% >nul 2>&1
echo Display turn off set to Never

:: 절전 및 최대 절전 타임아웃 비활성화
echo [4/4] Disabling sleep and hibernate timeouts...
:: 절전 타임아웃 비활성화 (AC 및 DC 모두)
powercfg /change standby-timeout-ac 0 >nul 2>&1
powercfg /change standby-timeout-dc 0 >nul 2>&1
:: 최대 절전 타임아웃 비활성화 (AC 및 DC 모두)
powercfg /change hibernate-timeout-ac 0 >nul 2>&1
powercfg /change hibernate-timeout-dc 0 >nul 2>&1
:: powercfg 설정을 통해서도 추가 설정
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

:: ============================================
:: 메뉴 4: 성능 최적화
:: - 시각 효과 최적화 (4개 항목만 활성화)
:: - 시작 및 복구 설정 변경
:: ============================================
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

:: 시각 효과 최적화 (4개 항목만 활성화)
echo [1/2] Optimizing visual effects...
:: 사용자 지정 시각 효과 모드로 설정
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f >nul 2>&1

:: 먼저 모든 시각 효과 비활성화
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f >nul 2>&1

:: 이제 필요한 4가지 시각 효과만 활성화
:: 1. 바탕 화면 아이콘 레이블에 그림자 사용
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "1" /f >nul 2>&1

:: 2. 아이콘 대신 미리 보기로 표시
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f >nul 2>&1

:: 3. 창 아래에 그림자 표시 (UserPreferencesMask에 포함)
:: 4. 화면 글꼴의 가장자리 다듬기 (ClearType 활성화)
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "FontSmoothingType" /t REG_DWORD /d "2" /f >nul 2>&1

:: UserPreferencesMask: 창 그림자와 아이콘 그림자를 위한 바이너리 값
:: 9012078010000000 = 아이콘 그림자, 창 그림자, 글꼴 다듬기가 활성화된 사용자 지정 설정
reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012078010000000" /f >nul 2>&1

echo Visual effects optimized successfully

:: 시작 및 복구 설정 구성
echo [2/2] Configuring startup and recovery settings...
:: OS 목록 표시 시간을 3초로 설정
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Configuration Manager" /v "Timeout" /t REG_DWORD /d "3" /f >nul 2>&1
bcdedit /timeout 3 >nul 2>&1

:: 디버깅 정보를 작은 메모리 덤프(256KB)로 설정
:: CrashDumpEnabled: 3 = 작은 메모리 덤프
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

:: ============================================
:: 메뉴 5: 시스템 및 파일 탐색기 설정
:: - PC 이름 변경 (VMFort-VDI)
:: - 파일 탐색기 기본 위치 변경 (내 PC)
:: - 개인 정보 보호 옵션 비활성화
:: - 파일 탐색기 기록 지우기
:: ============================================
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

:: ============================================
:: 메뉴 6: 바탕화면 및 잠금화면 설정
:: - 배경 개인 설정 (사진 모드)
:: - 색 설정 (투명 효과 비활성화, 다크/라이트 모드)
:: - 바탕화면 아이콘 추가 (제어판, 내 PC)
:: - 잠금 화면 설정 (사진 모드, 팁 비활성화)
:: ============================================
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

:: ============================================
:: 메뉴 7: 시작 메뉴 및 작업 표시줄 설정
:: - 시작 메뉴 설정 (최근 앱, 추천 비활성화)
:: - 작업 표시줄 설정 (검색, 위젯, 작업 보기)
:: - 알림 설정 (팁 및 추천 비활성화)
:: ============================================
:MENU_7
cls
echo ========================================
echo  7. Start menu and Taskbar settings
echo ========================================
echo.
echo This will configure Start menu, Taskbar, and Notification settings:
echo.
echo [Start Menu Settings]
echo  - Disable: Show recently added apps
echo  - Disable: Show most used apps
echo  - Disable: Show recommendations in Start, recent files, and jump lists
echo  - Disable: Show recommendations for tips, shortcuts, and new apps
echo  - Disable: Show account-related notifications
echo  - Enable folders: Settings, File Explorer, Downloads
echo.
echo [Taskbar Settings]
echo  - Set Search to: Search icon and label
echo  - Disable: Task View
echo  - Disable: Widgets
echo.
echo [Notification Settings]
echo  - Disable: Show Windows welcome experience after updates
echo  - Disable: Recommend ways to finish setting up this device
echo  - Disable: Get tips and suggestions when using Windows
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing Start menu, Taskbar, and Notification settings...
echo.

echo [1/3] Configuring Start menu settings...
:: Disable "Show recently added apps"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Start" /v "ShowRecentList" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable "Show most used apps"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Start" /v "ShowFrequentList" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable "Show recommendations in Start, File Explorer, and Jump Lists"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Start" /v "ShowRecommendations" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable "Show recommendations for tips, shortcuts, and new apps"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable "Show account-related notifications"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Enable Start menu folders: Settings, File Explorer, Downloads
:: Settings folder
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Start" /v "VisiblePlaces-SettingsFolder" /t REG_BINARY /d "01" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderSettings" /t REG_DWORD /d "1" /f >nul 2>&1

:: File Explorer folder
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Start" /v "VisiblePlaces-FileExplorer" /t REG_BINARY /d "01" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderFileExplorer" /t REG_DWORD /d "1" /f >nul 2>&1

:: Downloads folder
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Start" /v "VisiblePlaces-Downloads" /t REG_BINARY /d "01" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\current\device\Start" /v "AllowPinnedFolderDownloads" /t REG_DWORD /d "1" /f >nul 2>&1

echo Start menu settings configured

echo [2/3] Configuring Taskbar settings...
:: Set Search to "Search icon and label" (SearchboxTaskbarMode: 0=Hide, 1=Icon only, 2=Icon and label)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "2" /f >nul 2>&1

:: Disable Task View button
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable Widgets button (Windows 11)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f >nul 2>&1

echo Taskbar settings configured

echo [3/3] Configuring Notification settings...
:: Disable "Show Windows welcome experience after updates"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable "Recommend ways to finish setting up this device"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable "Get tips and suggestions when using Windows"
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

echo Notification settings configured

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  NOTE: Some changes may require
echo  restarting Explorer or rebooting
echo  your computer to take full effect.
echo ========================================
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:: ============================================
:: 메뉴 8: 시작 프로그램 및 개인 정보 설정
:: - 시작 프로그램 관리 (VMFort만 활성화)
:: - 개인 정보 일반 설정 (광고 ID, 추적 비활성화)
:: - 피드백 및 진단 설정
:: - 검색 개인 정보 설정
:: ============================================
:MENU_8
cls
echo ========================================
echo  8. Startup programs and Privacy settings
echo ========================================
echo.
echo This will configure startup programs and privacy settings:
echo.
echo [Startup Programs]
echo  - Enable only programs with "VMFort" in the name
echo  - Disable all other startup programs
echo.
echo [Privacy - General]
echo  - Disable: Let apps show personalized ads using advertising ID
echo  - Disable: Let websites show locally relevant content by accessing language list
echo  - Disable: Let Windows track app launches to improve Start and search
echo  - Disable: Show suggested content in Settings app
echo.
echo [Privacy - Feedback and Diagnostics]
echo  - Set feedback frequency to: Never
echo.
echo [Privacy - Search]
echo  - Disable: Search history
echo  - Clear device search history
echo  - Disable: Microsoft account search
echo  - Disable: Work or School account search
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo Processing startup programs and privacy settings...
echo.

echo [1/4] Configuring startup programs...
echo Disabling all startup programs except VMFort...

:: Move non-VMFort startup programs from Run to RunDisabled (HKCU)
for /f "skip=2 tokens=1,2,*" %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" 2^>nul') do (
    echo %%a | find /i "VMFort" >nul
    if errorlevel 1 (
        :: Get the value type and data
        set "valueName=%%a"
        set "valueType=%%b"
        set "valueData=%%c"

        :: Copy to RunDisabled key
        if "%%b"=="REG_SZ" (
            reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunDisabled" /v "%%a" /t REG_SZ /d "%%c" /f >nul 2>&1
        )
        if "%%b"=="REG_EXPAND_SZ" (
            reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunDisabled" /v "%%a" /t REG_EXPAND_SZ /d "%%c" /f >nul 2>&1
        )

        :: Delete from Run key
        reg.exe delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "%%a" /f >nul 2>&1
    )
)

:: Move non-VMFort startup programs from Run to RunDisabled (HKLM)
for /f "skip=2 tokens=1,2,*" %%a in ('reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" 2^>nul') do (
    echo %%a | find /i "VMFort" >nul
    if errorlevel 1 (
        :: Copy to RunDisabled key
        if "%%b"=="REG_SZ" (
            reg.exe add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunDisabled" /v "%%a" /t REG_SZ /d "%%c" /f >nul 2>&1
        )
        if "%%b"=="REG_EXPAND_SZ" (
            reg.exe add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunDisabled" /v "%%a" /t REG_EXPAND_SZ /d "%%c" /f >nul 2>&1
        )

        :: Delete from Run key
        reg.exe delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /v "%%a" /f >nul 2>&1
    )
)

:: Disable startup programs via Task Scheduler (keep only VMFort)
powershell.exe -Command "Get-ScheduledTask | Where-Object {$_.TaskName -notlike '*VMFort*' -and $_.State -eq 'Ready'} | Disable-ScheduledTask" >nul 2>&1

:: Disable startup apps via StartupApproved registry (Windows 10/11 method)
powershell.exe -Command "$regPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run'; if (Test-Path $regPath) { Get-ItemProperty $regPath | Get-Member -MemberType NoteProperty | Where-Object { $_.Name -notlike '*VMFort*' -and $_.Name -ne 'PSPath' -and $_.Name -ne 'PSParentPath' -and $_.Name -ne 'PSChildName' -and $_.Name -ne 'PSDrive' -and $_.Name -ne 'PSProvider' } | ForEach-Object { Set-ItemProperty -Path $regPath -Name $_.Name -Value ([byte[]](0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00)) -ErrorAction SilentlyContinue } }" >nul 2>&1

echo Startup programs configured (VMFort enabled, others disabled)

echo [2/4] Configuring General privacy settings...
:: Disable advertising ID
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable language list access for websites
reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f >nul 2>&1

:: Disable app launch tracking
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable suggested content in Settings app
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

echo General privacy settings configured

echo [3/4] Configuring Feedback and Diagnostics settings...
:: Set feedback frequency to Never (0 = Never)
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable Windows feedback
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f >nul 2>&1

echo Feedback and Diagnostics settings configured

echo [4/4] Configuring Search privacy settings...
:: Disable search history
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Clear device search history
powershell.exe -Command "Remove-Item -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery' -Recurse -ErrorAction SilentlyContinue" >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f >nul 2>&1

:: Disable Microsoft account search
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable Work or School account search
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Additional search privacy settings
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f >nul 2>&1

echo Search privacy settings configured

echo.
echo Task completed successfully.
echo.
echo ========================================
echo  NOTE: Some changes may require
echo  restarting your computer or logging
echo  out and back in to take full effect.
echo ========================================
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:: ============================================
:: 메뉴 9: 불필요한 파일 삭제 및 용량 최적화
:: - Windows Update 정리
:: - 임시 파일 정리 (C, D 드라이브)
:: - 디스크 정리 (매우 낮은 디스크 모드)
:: - 휴지통 비우기
:: - 관리 공유 비활성화
:: - 이벤트 로그 정리
:: - 복원 지점 삭제
:: ============================================
:MENU_9
cls
echo ========================================
echo  9. Cleanup unnecessary files and optimize storage
echo ========================================
echo.
echo WARNING: This will perform aggressive cleanup operations:
echo.
echo [Cleanup Operations]
echo  - Windows Update cleanup and component store reset
echo  - Temporary files cleanup (C and D drives)
echo  - Disk cleanup (very low disk mode)
echo  - Recycle Bin cleanup (all drives)
echo  - Disable administrative shares (C$, D$, ADMIN$, IPC$)
echo  - Event log cleanup
echo  - Delete all system restore points
echo.
echo NOTE: This operation may take several minutes.
echo       Some operations are irreversible (restore points).
echo.
set /p confirm="Do you want to proceed? (Y/N): "
if /i not "%confirm%"=="Y" goto MAIN_MENU

echo.
echo ========================================
echo  Starting cleanup operations...
echo  Please wait, this may take a while...
echo ========================================
echo.

echo [1/11] Preparing cleanup operations...
timeout /t 2 >nul
echo Ready to start

echo [2/11] Stopping unnecessary services temporarily...
net stop wuauserv >nul 2>&1
echo Services stopped

echo [3/11] Windows Update Cleanup...
echo This may take several minutes, please wait...
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase >nul 2>&1
Dism.exe /online /Cleanup-Image /SPSuperseded >nul 2>&1
echo Windows Update cleanup completed

echo [4/11] C Drive Temporary Files Cleanup...
del /f /s /q %temp%\* >nul 2>&1
del /f /s /q C:\Windows\Temp\* >nul 2>&1
del /f /s /q C:\Windows\Prefetch\* >nul 2>&1
echo C Drive temp files cleaned

echo [5/11] D Drive Temporary Files Cleanup...
if exist D:\ (
    del /f /s /q D:\*.tmp >nul 2>&1
    del /f /s /q D:\*.temp >nul 2>&1
    del /f /s /q D:\Temp\* >nul 2>&1
    for /d %%p in (D:\*) do (
        if exist "%%p\Temp" del /f /s /q "%%p\Temp\*" >nul 2>&1
    )
    echo D Drive temp files cleaned
) else (
    echo D Drive not found, skipping
)

echo [6/11] C Drive Disk Cleanup...
echo Running disk cleanup in very low disk mode...
cleanmgr /verylowdisk /d C: >nul 2>&1
echo C Drive disk cleanup completed

echo [7/11] D Drive Disk Cleanup...
if exist D:\ (
    cleanmgr /verylowdisk /d D: >nul 2>&1
    echo D Drive disk cleanup completed
) else (
    echo D Drive not found, skipping
)

echo [8/11] Recycle Bin Cleanup...
rd /s /q C:\$Recycle.Bin >nul 2>&1
if exist D:\$Recycle.Bin rd /s /q D:\$Recycle.Bin >nul 2>&1
echo Recycle Bin emptied

echo [9/11] Disable Administrative Shares...
:: Delete current shares
net share C$ /delete /y >nul 2>&1
net share D$ /delete /y >nul 2>&1
net share ADMIN$ /delete /y >nul 2>&1
net share IPC$ /delete /y >nul 2>&1

:: Registry modification for permanent disable (Windows Pro = Workstation)
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "0" /f >nul 2>&1
echo Administrative shares disabled

echo [10/11] Event Log Cleanup...
for /F "tokens=*" %%1 in ('wevtutil.exe el') DO wevtutil.exe cl "%%1" >nul 2>&1
echo Event logs cleared

echo [11/11] Delete Restore Points...
vssadmin delete shadows /all /quiet >nul 2>&1
echo Restore points deleted

echo.
echo Restarting Windows Update service...
net start wuauserv >nul 2>&1

echo.
echo ========================================
echo  All cleanup operations completed!
echo ========================================
echo.
echo Task completed successfully.
echo.
echo Press any key to return to main menu...
pause >nul
goto MAIN_MENU

:: ============================================
:: 프로그램 종료
:: ============================================
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
