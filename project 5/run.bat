@echo off
echo ========================================
echo Doctor Appointment System - Startup
echo ========================================
echo.

REM Check if virtual environment exists
if not exist "venv\" (
    echo Creating virtual environment...
    python -m venv venv
    echo.
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate
echo.

REM Install/update dependencies
echo Installing dependencies...
cd backend
pip install -r requirements.txt
echo.

REM Copy .env if it doesn't exist
if not exist ".env" (
    echo Creating .env file from template...
    copy .env.example .env
    echo Please edit backend\.env with your configuration
    echo.
)

REM Start the backend server
echo ========================================
echo Starting Backend Server...
echo API will be available at: http://localhost:8000
echo API Documentation: http://localhost:8000/docs
echo ========================================
echo.
echo Press Ctrl+C to stop the server
echo.

uvicorn app.main:app --reload --host 0.0.0.0 --port 8000