@echo off
REM filepath: /e:/Projects/F1 Management/Code/Server/clean.bat

REM Delete the build directory
if exist build (
    echo Deleting build directory...
    rmdir /S /Q build
)

REM Delete the crow directory
if exist crow (
    echo Deleting crow directory...
    rmdir /S /Q crow
)

echo Clean up completed.