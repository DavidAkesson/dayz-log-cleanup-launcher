@echo off
:: Simple DayZ log cleanup and launcher script for DZSALauncher users
:: Author: David Åkesson, Sweden - 12-07-2025

:: Clear old DayZ log files before launch
echo Cleaning up old DayZ logs before starting...
del /q "%LocalAppData%\DayZ\*.rpt"
del /q "%LocalAppData%\DayZ\*.mdmp"
del /q "%LocalAppData%\DayZ\*.log"

:: Launch DZSALauncher
:: NOTE: Adjust the path below if your DZSALauncher.exe is installed elsewhere
echo Starting DZSALauncher...
start "" "D:\DZSALauncher\DZSALauncher.exe"

:: Wait for DayZ to start (detect DayZ_x64.exe process)
echo Waiting for DayZ to start...
:waitforstart
timeout /t 3 >nul
tasklist /fi "imagename eq DayZ_x64.exe" | find /i "DayZ_x64.exe" >nul
if errorlevel 1 goto waitforstart

:: Once DayZ has started, wait until it exits
echo DayZ is running. Waiting for it to exit...
:waitforclose
timeout /t 5 >nul
tasklist /fi "imagename eq DayZ_x64.exe" | find /i "DayZ_x64.exe" >nul
if not errorlevel 1 goto waitforclose

:: Cleanup logs again after exit
echo DayZ has exited. Cleaning up logs...
del /q "%LocalAppData%\DayZ\*.rpt"
del /q "%LocalAppData%\DayZ\*.mdmp"
del /q "%LocalAppData%\DayZ\*.log"

echo All done! Press any key to close this window.
pause >nul
