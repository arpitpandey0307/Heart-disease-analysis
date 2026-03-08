@echo off
echo ========================================
echo Git Repository Setup
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo Error: Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

echo Git is installed!
echo.

REM Initialize git repository
echo Initializing Git repository...
git init
if errorlevel 1 (
    echo Error: Failed to initialize Git repository
    pause
    exit /b 1
)
echo Git repository initialized!
echo.

REM Add all files
echo Adding all files to Git...
git add .
if errorlevel 1 (
    echo Error: Failed to add files
    pause
    exit /b 1
)
echo Files added successfully!
echo.

REM Create initial commit
echo Creating initial commit...
git commit -m "Initial commit: Complete heart disease analysis project"
if errorlevel 1 (
    echo Error: Failed to create commit
    pause
    exit /b 1
)
echo Initial commit created!
echo.

REM Prompt for GitHub repository URL
echo.
echo ========================================
echo IMPORTANT: Add Your GitHub Repository
echo ========================================
echo.
echo Please enter your GitHub repository URL
echo Example: https://github.com/username/heart-disease-analysis.git
echo.
set /p REPO_URL="Enter repository URL: "

if "%REPO_URL%"=="" (
    echo Error: Repository URL cannot be empty
    pause
    exit /b 1
)

REM Add remote origin
echo.
echo Adding remote repository...
git remote add origin %REPO_URL%
if errorlevel 1 (
    echo Warning: Remote might already exist or URL is invalid
    echo You can manually add it later with:
    echo git remote add origin %REPO_URL%
)
echo.

REM Rename branch to main (if needed)
git branch -M main
echo.

REM Push to main branch
echo Pushing to main branch...
git push -u origin main
if errorlevel 1 (
    echo.
    echo Error: Failed to push to remote
    echo This might be because:
    echo 1. Repository doesn't exist on GitHub
    echo 2. Authentication failed
    echo 3. Network issues
    echo.
    echo Please create the repository on GitHub first, then run:
    echo git push -u origin main
    pause
    exit /b 1
)
echo.

echo ========================================
echo Creating Team Member Branches
echo ========================================
echo.

REM Create Atul Singh's branch
echo Creating atul-singh branch...
git checkout -b atul-singh
git push -u origin atul-singh
echo.

REM Create Cyrus Tiwari's branch
echo Creating cyrus-tiwari branch...
git checkout -b cyrus-tiwari
git push -u origin cyrus-tiwari
echo.

REM Create Arpit Pandey's branch
echo Creating arpit-pandey branch...
git checkout -b arpit-pandey
git push -u origin arpit-pandey
echo.

REM Create Atul Gautam's branch
echo Creating atul-gautam branch...
git checkout -b atul-gautam
git push -u origin atul-gautam
echo.

REM Return to main branch
echo Returning to main branch...
git checkout main
echo.

echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Repository: %REPO_URL%
echo.
echo Branches created:
echo - main (default)
echo - atul-singh
echo - cyrus-tiwari
echo - arpit-pandey
echo - atul-gautam
echo.
echo Next steps:
echo 1. Each team member should clone the repository
echo 2. Switch to your branch: git checkout your-branch-name
echo 3. Make your changes
echo 4. Commit and push: git add . ^&^& git commit -m "message" ^&^& git push
echo.
echo For detailed Git commands, see GIT_COMMANDS.md
echo.
pause
