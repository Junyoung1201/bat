@echo off
chcp 65001
C:
set chromeUserData=%LOCALAPPDATA%\Google\Chrome\User Data
set chromeUserData2=%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default
del /s /q "%chromeUserData%\Default\History"
del /s /q "%chromeUserData%\Default\History-journal"
del /s /q "%chromeUserData%\Default\Sessions"
rd /s /q "%chromeUserData%\Default\Cache"

del /s /q "%chromeUserData2%\History"
del /s /q "%chromeUserData2%\History-journal"
del /s /q "%chromeUserData2%\Login Data"
del /s /q "%chromeUserData2%\Login Data For Account"
del /s /q "%chromeUserData2%\Login Data For Account-journal"
del /s /q "%chromeUserData2%\Login Data-journal"
del /s /q "%chromeUserData2%\Top Sites"
del /s /q "%chromeUserData2%\Top Sites-journal"
del /s /q "%chromeUserData2%\Visited Links"
del /s /q "%chromeUserData2\Web Data"
del /s /q "%chromeUserData2\Web Data-journal"
rd /s /q "%chromeUserData2%\Accounts"
rd /s /q "%chromeUserData2%\AutofillStrikeDatabase"
rd /s /q "%chromeUserData2%\Cache"
rd /s /q "%chromeUserData2%\IndexedDB"
rd /s /q "%chromeUserData2%\Local Storage"
rd /s /q "%chromeUserData2%\Session Storage"
rd /s /q "%chromeUserData2%\Sessions"

del /s /q "%appdata%\Adobe\Adobe Photoshop 2022\Adobe Photoshop 2022 Settings\MachinePrefs.psp"

del /s /q "%localappdata%\Packages\Microsoft.ZuneMusic_8wekyb3d8bbwe\LocalState\MediaPlayer.db-wal"
del /s /q "%localappdata%\Packages\Microsoft.ZuneMusic_8wekyb3d8bbwe\LocalState\MediaPlayer.db-shm"
del /s /q "%localappdata%\Packages\Microsoft.ZuneMusic_8wekyb3d8bbwe\LocalState\MediaPlayer.db"

del /q /f /s "%APPDATA%\Microsoft\Windows\Recent\*"
del /q /f /s "%TEMP%\*"

del /q "C:\Windows\Memory.dmp" 2>nul
del /q "C:\Windows\Minidump\*.dmp" 2>nul

reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /f

wevtutil cl Application
