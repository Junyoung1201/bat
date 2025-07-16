C:
set chromeUserData=%LOCALAPPDATA%\Google\Chrome\User Data
del /s /q "%chromeUserData%\Default\History"
del /s /q "%chromeUserData%\Default\History-journal"
del /s /q "%chromeUserData%\Default\Sessions"
rd /s /q "%chromeUserData%\Default\Cache"

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