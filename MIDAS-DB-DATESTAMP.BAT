
@echo off
setlocal enabledelayedexpansion

rem Get the current date in YYYYMMDD format
for /f "tokens=2-4 delims=/ " %%a in ("%date%") do (
  set "year=%%c"
  set "month=%%a"
  set "day=%%b"
)

rem Add leading zeros if needed
if %month% lss 10 set "month=0%month%"
if %day% lss 10 set "day=0%day%"

rem Construct the destination folder name with the current date
set "destination=G:\My Drive\MIDAS_DATABASE_BACKUPEVERYDAY\!year!!month!!day!"

rem Use xcopy to copy the files
robocopy "G:\My Drive\midas_database_backup" "%destination%" /E

endlocal
