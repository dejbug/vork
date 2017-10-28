@echo off

echo %APPVEYOR_API_URL%

set PATH=C:\mingw-w64\i686-6.3.0-posix-dwarf-rt_v5-rev1\mingw32\bin;%PATH%

mingw32-make --version | head -1
g++ --version | head -1
ar --version | head -1

mkdir build
mkdir deploy

mingw32-make -j1 --keep-going SHELL=cmd.exe
