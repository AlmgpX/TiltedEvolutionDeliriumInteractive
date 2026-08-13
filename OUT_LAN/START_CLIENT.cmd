@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..\..") do set "GAME_ROOT=%%~fI"
set "STR_DIR=%GAME_ROOT%\Data\SkyrimTogetherReborn"

if not exist "%STR_DIR%\SkyrimTogether.exe" (
  echo [OUT LAN] SkyrimTogether.exe not found in:
  echo %STR_DIR%
  exit /b 1
)

start "OUT LAN Skyrim" "%STR_DIR%\SkyrimTogether.exe"
