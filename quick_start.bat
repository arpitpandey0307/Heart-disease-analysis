@echo off
echo ========================================
echo Heart Disease Analysis - Quick Start
echo ========================================
echo.

echo Step 1: Creating virtual environment...
python -m venv venv
if errorlevel 1 (
    echo Error: Failed to create virtual environment
    pause
    exit /b 1
)
echo Virtual environment created successfully!
echo.

echo Step 2: Activating virtual environment...
call venv\Scripts\activate.bat
echo.

echo Step 3: Installing dependencies...
pip install -r requirements.txt
if errorlevel 1 (
    echo Error: Failed to install dependencies
    pause
    exit /b 1
)
echo Dependencies installed successfully!
echo.

echo Step 4: Creating data directory...
if not exist "data" mkdir data
echo Data directory created!
echo.

echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Copy .env.example to .env and update with your credentials
echo 2. Run: python scripts\download_dataset.py
echo 3. Run: python scripts\setup_database.py
echo 4. Open Tableau and connect to database
echo 5. Run Flask app: cd flask_app ^&^& python app.py
echo.
pause
