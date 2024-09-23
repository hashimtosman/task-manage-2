@echo off
:: Check if npm is installed
where npm >nul 2>nul
IF ERRORLEVEL 1 (
    echo "npm is not installed. Please install Node.js and npm."
    pause
    exit /b 1
)

:: Navigate to the directory where the .bat file is located
cd /d "%~dp0"

:: Check if node_modules folder exists
IF NOT EXIST "node_modules" (
    echo "Dependencies are missing. Installing dependencies..."
    npm install
) ELSE (
    echo "Dependencies are already installed."
)

:: Start the project
echo Starting the project...
npm start

pause
