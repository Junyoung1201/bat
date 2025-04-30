::
::  최대한 흔적없이 크롬 포터블 사용하기
::  크롬 포터블 폴더 안에 배치 > 바로가기 생성 > 관리자 권한으로 실행하여 크롬 실행
::

@echo off
chcp 65001
setlocal ENABLEDELAYEDEXPANSION

net session >nul 2>&1 || (
    echo 관리자 권한 없음.
    pause
    goto :eof
)

set "chrome_dir=%~dp0"
set "chrome_exe=%chrome_dir%\GoogleChromePortable.exe"
set "user_data_dir=%TEMP%\ChromeTemp"
set "cache_dir=%TEMP%\ChromeCache"

if not exist "%chrome_exe%" (
    echo "%chrome_exe%"을 찾을 수 없음.
    pause
    goto :eof
)

for %%F in ("%user_data_dir%" "%cache_dir%") do (
    if exist "%%~F" rd /s /q "%%~F"
)

start "" /wait "%chrome_exe%" ^
  --incognito ^
  --user-data-dir="%user_data_dir%" ^
  --disk-cache-dir="%cache_dir%" --disk-cache-size=1 --media-cache-size=1 ^
  --disable-gpu-shader-disk-cache ^
  --disable-sync --disable-extensions ^
  --disable-crash-reporter ^
  --disable-background-networking --disable-component-update ^
  --disable-features=Tracing ^
  --disable-perfetto ^
  --disable-logging --log-level=3 ^
  --disable-backgrounding-occluded-windows ^
  --disable-client-side-phishing-detection ^
  --disable-component-extensions-with-background-pages ^
  --no-default-browser-check ^
  --no-first-run

for %%F in ("%user_data_dir%" "%cache_dir%") do (
    if exist "%%~F" rd /s /q "%%~F"
)

ipconfig /flushdns

pause
endlocal
