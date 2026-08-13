@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..\..") do set "GAME_ROOT=%%~fI"
set "STR_DIR=%GAME_ROOT%\Data\SkyrimTogetherReborn"

if not exist "%STR_DIR%\SkyrimTogetherServer.exe" (
  echo [OUT LAN] SkyrimTogetherServer.exe not found in:
  echo %STR_DIR%
  exit /b 1
)

if not exist "%STR_DIR%\SkyrimTogether.exe" (
  echo [OUT LAN] SkyrimTogether.exe not found in:
  echo %STR_DIR%
  exit /b 1
)

start "OUT LAN Server" "%STR_DIR%\SkyrimTogetherServer.exe"
timeout /t 2 /nobreak >nul
start "OUT LAN Skyrim" "%STR_DIR%\SkyrimTogether.exe"
