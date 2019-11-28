@echo off
mode con: cols=60 lines=42
title Command Prompt Chat//Project %username%
:login
cls
echo ---------------------
echo Log-In to Old-School Chat
echo.
echo.
echo.
echo Please type your username and press enter...
echo [To Create an Account, type 1 and Press Enter]
echo.
if not exist ".\users\" md users
set /p username=Username:
if %username% == 1 goto create_account
cls

echo ---------------------
echo Log-In to Old-School Chat
echo.
echo.
echo.
echo Please type your password and press enter...
echo.
set /p password=Password:
if exist ".\users\%username%.py" goto password_check
:incorrect_credentials
cls
echo I'm sorry, but those credentials were not found. Please try again.
timeout /t 3 >nul
goto login
:password_check
set /p password_file=<".\users\%username%.py"
if %password_file%==%password% goto correct_credentials
goto incorrect_credentials

:create_account
cls
echo _____________________
echo Create an Account
echo ---------------------
echo.
echo.
echo Please enter your information...
echo.
set /p new_username=Username:
cls
echo _____________________
echo Create an Account
echo ---------------------
echo.
echo.
echo Please enter your information...
echo.
set /p new_password=Password:
echo %new_password% >".\users\%new_username%.py"
echo.
echo Account Successfully Created!
timeout /t 2 >nul
goto login
:correct_credentials
echo. >>.\chat.py
echo %username% has joined the room >>chat.py
echo. >>.\chat.py
cls
goto read_messages

:read_messages
cls
type .\chat.py

set /p input=%username%:
if "%input%"=="" goto read_messages
if not exist ".\chat.py" goto create
if "%input%"=="blue" goto blue
if "%input%"=="meme" goto meme
echo %username%: %input% >>chat.py
if "%input%"=="refresh" goto refresh
set input=
goto read_messages


:refresh
if not exist ".\chat.py" goto create
type .\chat.py
title Command Prompt Chat//Project %username%
goto read_messages


:create
echo Old-School Chat >.\chat.py
echo ================================= >>.\chat.py
goto home

:meme
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 
start chrome.exe 




:blue
@echo off
cd /
cls
color 17
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo The problem seems to be caused by the following file: SPCMDCON.SYS
echo.
echo PAGE_FAULT_IN_NONPAGED_AREA
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacturer
echo for any Windows updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardware
echo or software. Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components, restart
echo your computer, press F8 to select Advanced Startup Options, and then
echo select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x00000050 (0xFD3094C2,0x00000001,0xFBFE7617,0x00000000)
echo.
echo.
echo ***  SPCMDCON.SYS - Address FBFE7617 base at FBFE5000, DateStamp 3d6dd67c
pause >nul
cls
echo Downloading viruses . . .
ping localhost -n 5 >nul
dir /s
pause >nul
goto read_messages