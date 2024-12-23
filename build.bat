@echo off

:: Check if Crow is present, if not, clone it
if not exist crow (
    echo Crow doesn't Exist, cloning repository ...
    git clone https://github.com/CrowCpp/Crow.git crow
)

:: Create build directory if it doesn't exist
if not exist build mkdir build

:: Navigate to build directory
cd build
echo ******************************
echo      Building RaceServer
echo ******************************

:: Run CMake
cmake -G "MinGW Makefiles" -DCMAKE_C_COMPILER=C:/msys64/mingw64/bin/gcc.exe -DCMAKE_CXX_COMPILER=C:/msys64/mingw64/bin/g++.exe ..
if %errorlevel% neq 0 (
    echo ************************************************************
    echo      Build failed during CMake configuration
    echo ************************************************************
    exit /b %errorlevel%
)

:: Run Make
mingw32-make
if %errorlevel% neq 0 (
    echo ************************************************************
    echo      Build failed during compilation
    echo ************************************************************
    exit /b %errorlevel%
)

echo ************************************************************
echo      Build finished successfully
echo ************************************************************