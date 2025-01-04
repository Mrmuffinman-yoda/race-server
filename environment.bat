@echo off

REM Check if an argument is provided
if "%1"=="" (
    echo No argument provided. Please specify 'start', 'build', or 'clean'.
    goto end
)

REM Run the appropriate command based on the argument
if "%1"=="start" (
    echo Starting RaceServer...
    .\build\RaceServer.exe
    goto end
)

if "%1"=="build" (
    echo Building the project...
    .\build.bat
    goto end
)

if "%1"=="clean" (
    echo Cleaning the project...
    .\clean.bat
    goto end
)

REM If the argument is not recognized
echo Invalid argument. Please specify 'start', 'build', or 'clean'.

:end
REM Keep the command prompt open
pause