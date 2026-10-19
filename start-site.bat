@echo off
title TAVCP website - local server
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo Node.js is not installed. Install the LTS version from https://nodejs.org
  echo then double-click this file again.
  echo.
  start https://nodejs.org
  pause
  exit /b 1
)

echo Node version:
node -v

if not exist node_modules (
  echo.
  echo Installing dependencies - first run only, takes a minute...
  call npm install
  if errorlevel 1 ( echo Install failed. & pause & exit /b 1 )
)

echo.
echo Building the site...
call npm run build
if errorlevel 1 ( echo Build failed. & pause & exit /b 1 )

echo.
echo Starting the site at http://localhost:3000
echo Keep this window open. Close it to stop the site.
start "" http://localhost:3000
call npm start
pause
