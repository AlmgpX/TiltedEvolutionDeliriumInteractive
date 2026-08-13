@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%..\..") do set "GAME_ROOT=%%~fI"

if not exist "%GAME_ROOT%\SkyrimSE.exe" (
  echo [OUT LAN] SkyrimSE.exe was not found at:
  echo %GAME_ROOT%
  echo.
  echo Clone the repository into:
  echo Skyrim Special Edition\_OUT_STR
  exit /b 1
)

if not exist "%GAME_ROOT%\Data" (
  echo [OUT LAN] Data directory is missing.
  exit /b 1
)

echo [OUT LAN] Skyrim root detected:
echo %GAME_ROOT%
echo.
echo Bootstrap is installed. Runtime package deployment will be added by the next build-pipeline commit.
exit /b 0
