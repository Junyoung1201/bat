@echo off
cls
title ����� ���� ��

C:

set cDef_1=%LOCALAPPDATA%\Google\Chrome\User Data\Default
set cDef_2=%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default

echo.
echo ũ�� ����� ����
echo.
del /s /q "%cDef_1%\History"
del /s /q "%cDef_1%\History-journal"
del /s /q "%cDef_1%\Login Data"
del /s /q "%cDef_1%\Login Data For Account"
del /s /q "%cDef_1%\Login Data For Account-journal"
del /s /q "%cDef_1%\Login Data-journal"
del /s /q "%cDef_1%\Top Sites"
del /s /q "%cDef_1%\Top Sites-journal"
del /s /q "%cDef_1%\Visited Links"
del /s /q "%cDef_1%\Web Data"
del /s /q "%cDef_1%\Web Data-journal"
del /s /q "%cDef_1%\Account Web Data"
del /s /q "%cDef_1%\Account Web Data-journal"
del /s /q "%cDef_1%\Affiliation Database"
del /s /q "%cDef_1%\Affiliation Database-journal"
del /s /q "%cDef_1%\BrowsingTopicsSiteData"
del /s /q "%cDef_1%\BrowsingTopicsSiteData-journal"
del /s /q "%cDef_1%\BrowsingTopicsState"
del /s /q "%cDef_1%\InterestGroups"
del /s /q "%cDef_1%\SharedStorage"
del /s /q "%cDef_1%\Shortcuts"
del /s /q "%cDef_1%\Shortcuts-journal"
del /s /q "%cDef_1%\Top Sites"
del /s /q "%cDef_1%\Top Sites-journal"
rd /s /q "%cDef_1%\Accounts"
rd /s /q "%cDef_1%\AutofillStrikeDatabase"
rd /s /q "%cDef_1%\Cache"
rd /s /q "%cDef_1%\IndexedDB"
rd /s /q "%cDef_1%\Local Storage"
rd /s /q "%cDef_1%\Session Storage"
rd /s /q "%cDef_1%\Sessions"

del /s /q "%cDef_2%\History"
del /s /q "%cDef_2%\History-journal"
del /s /q "%cDef_2%\Login Data"
del /s /q "%cDef_2%\Login Data For Account"
del /s /q "%cDef_2%\Login Data For Account-journal"
del /s /q "%cDef_2%\Login Data-journal"
del /s /q "%cDef_2%\Top Sites"
del /s /q "%cDef_2%\Top Sites-journal"
del /s /q "%cDef_2%\Visited Links"
del /s /q "%cDef_2%\Web Data"
del /s /q "%cDef_2%\Web Data-journal"
del /s /q "%cDef_2%\Account Web Data"
del /s /q "%cDef_2%\Account Web Data-journal"
del /s /q "%cDef_2%\Affiliation Database"
del /s /q "%cDef_2%\Affiliation Database-journal"
del /s /q "%cDef_2%\BrowsingTopicsSiteData"
del /s /q "%cDef_2%\BrowsingTopicsSiteData-journal"
del /s /q "%cDef_2%\BrowsingTopicsState"
del /s /q "%cDef_2%\InterestGroups"
del /s /q "%cDef_2%\SharedStorage"
del /s /q "%cDef_2%\Shortcuts"
del /s /q "%cDef_2%\Shortcuts-journal"
del /s /q "%cDef_2%\Top Sites"
del /s /q "%cDef_2%\Top Sites-journal"
rd /s /q "%cDef_2%\Accounts"
rd /s /q "%cDef_2%\AutofillStrikeDatabase"
rd /s /q "%cDef_2%\Cache"
rd /s /q "%cDef_2%\IndexedDB"
rd /s /q "%cDef_2%\Local Storage"
rd /s /q "%cDef_2%\Session Storage"
rd /s /q "%cDef_2%\Sessions"

del /s /q "%userprofile%\AppData\Local\User Data\Default\Login Data"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Login Data-journal"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Top Sites"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Top Sites-journal"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Visited Links"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Web Data"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Web Data-journal"
del /s /q "%userprofile%\AppData\Local\User Data\Default\GPUCache\*"
del /s /q "%userprofile%\AppData\Local\User Data\Default\Sync Data\*"
rd /s /q "%userprofile%\AppData\Local\User Data\Default\Thumbnails"

echo.
echo ���� Ž���� ĳ�� db ����
echo.
del /s /q "%LocalAppData%\Microsoft\Windows\Explorer\*.db"

echo.
echo ������ AI
echo.
rd /q /s "%userprofile%\AppData\Local\mpv"
rd /q /s "%localappdata%\Topaz Labs LLC\Topaz Photo AI\cache"

echo.
echo ���伥 2025 ���� ���� ����
echo.
del /q /s "%appdata%\Adobe\Adobe Photoshop 2025\Adobe Photoshop 2025 Settings\MachinePrefs.psp"

echo.
echo ����ũ�μ���Ʈ ���� �� ��� ���
echo.
del /q /s "%localappdata%\Packages\Microsoft.ZuneMusic_8wekyb3d8bbwe\LocalState\MediaPlayer.db-wal"
del /q /s "%localappdata%\Packages\Microsoft.ZuneMusic_8wekyb3d8bbwe\LocalState\MediaPlayer.db-shm"
del /q /s "%localappdata%\Packages\Microsoft.ZuneMusic_8wekyb3d8bbwe\LocalState\MediaPlayer.db"

echo.
echo �ӽ� ���� ����
echo.
del /q /s "%APPDATA%\Microsoft\Windows\Recent\*"
if exist "%temp%" (
rd /s /q "%temp%"
timeout /t 1 /nobreak > NUL
mkdir "%temp%"
)

echo.
echo ������ �޸� ���� ����
echo.
del /s /q "C:\Windows\Memory.dmp"
del /s /q "C:\Windows\Minidump\*.dmp"

echo.
echo ������ �������� ����
echo.
del /s /q "C:\Windows\Prefetch\*.*"

echo.
echo ���� Ž���� ��� ǥ������ �ֱ� ��� ���� ����
echo.
del /s /q /f "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*"
del /s /q /f "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*"
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /VA /F
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /VA /F 

rundll32 InetCpl.cpl,ClearMyTracksByProcess 1

echo.
echo AppData �� �α����� ����
echo.
del /s /q *.log

echo.
echo �̺�Ʈ �α� ����
echo.
wevtutil cl Application

echo.
echo trim ����
echo.
defrag C: /L /V