@echo off
chcp 65001 > nul
echo ====================================================
echo  GitHub Push: AI_EDUCATIONJ
echo  URL: https://github.com/jacksoon2007-droid/AI_EDUCATIONJ.git
echo ====================================================
echo.

cd /d "%~dp0"
if exist "my_portfolio\.git" cd my_portfolio

git remote set-url origin https://github.com/jacksoon2007-droid/AI_EDUCATIONJ.git
git push -u origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo [OK] Push completed successfully!
) else (
    echo [ERROR] Push failed. Please check your GitHub login or authentication.
)
echo.
pause
