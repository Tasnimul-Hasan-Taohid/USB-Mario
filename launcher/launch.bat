@echo off
title USB Mario — Launching...

:: Find the game file relative to this script
set "GAME=%~dp0..\index.html"

:: Try Chrome first (best experience)
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "CHROME86=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
set "CHROME_LOCAL=%LocalAppData%\Google\Chrome\Application\chrome.exe"

if exist "%CHROME%" (
    start "" "%CHROME%" --new-window --start-fullscreen "%GAME%"
    goto :done
)
if exist "%CHROME86%" (
    start "" "%CHROME86%" --new-window --start-fullscreen "%GAME%"
    goto :done
)
if exist "%CHROME_LOCAL%" (
    start "" "%CHROME_LOCAL%" --new-window --start-fullscreen "%GAME%"
    goto :done
)

:: Try Edge
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
set "EDGE64=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"

if exist "%EDGE64%" (
    start "" "%EDGE64%" --new-window --start-fullscreen "%GAME%"
    goto :done
)
if exist "%EDGE%" (
    start "" "%EDGE%" --new-window --start-fullscreen "%GAME%"
    goto :done
)

:: Fallback — open with default browser
start "" "%GAME%"

:done
exit
