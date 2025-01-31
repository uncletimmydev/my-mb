@echo off
where mb >nul 2>nul
if %errorlevel% neq 0 (
    echo Mountebank is not installed. Installing now...
    npm install -g mountebank
) else (
    echo Mountebank is already installed.
)

echo Running Mountebank...
mb --configfile imposters.ejs
pause
