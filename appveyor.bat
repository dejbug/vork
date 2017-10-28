@ECHO off

ECHO %APPVEYOR_API_URL%

SET MINGW_BIN=C:\mingw-w64\i686-6.3.0-posix-dwarf-rt_v5-rev1\mingw32\bin
SET WGET_BIN=c:\MinGW\msys\1.0\bin
SET PATH=%MINGW_BIN%;%WGET_BIN%;%PATH%

mingw32-make --version | head -1
g++ --version | head -1
ar --version | head -1

MKDIR build
MKDIR deploy

mingw32-make -j1 --keep-going SHELL=cmd.exe
