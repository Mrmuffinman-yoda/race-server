@echo off
setlocal enabledelayedexpansion

echo Building Docker images...
docker-compose build
if %errorlevel% neq 0 (
    echo Docker Compose build failed.
    goto end
)

echo Starting Docker containers...
docker-compose up
if %errorlevel% neq 0 (
    echo Docker Compose up failed.
    goto end
)

:end
echo Script execution complete.
pause