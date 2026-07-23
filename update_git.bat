@echo off
title SW MooD Cafe - Git Auto Update
echo ===================================================
echo           SW MooD Cafe - Git Update Tool           
echo ===================================================
echo.

echo Checking git status...
git status
echo.

set /p commit_msg="Enter commit message (Press Enter for default: 'Update SW MooD Cafe website'): "

if "%commit_msg%"=="" set commit_msg=Update SW MooD Cafe website

echo.
echo Adding all files...
git add .

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing to GitHub (origin main)...
git push -u origin main

echo.
echo ===================================================
echo         Git update process finished!
echo ===================================================
pause
