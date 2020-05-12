@ECHO off
echo.
echo Skripts palaists: %time%
TIMEOUT /T 15
start vlc -Z --random --loop C:\Radio\Muzika
:laiks

rem 0.st
if %time% GEQ 7:45:00.00 if %time% LEQ 8:24:50.00 goto stunda
if %time% GEQ 8:25:00.00 if %time% LEQ 8:29:50.00 goto starpbridis_isais
rem 1.st
if %time% GEQ 8:30:00.00 if %time% LEQ 9:09:50.00 goto stunda
if %time% GEQ 9.10:00.00 if %time% LEQ 9:14:50.00 goto starpbridis_isais
rem 2.st
if %time% GEQ 9:15:00.00 if %time% LEQ 9:54:50.00 goto stunda
if %time% GEQ 9:55:00.00 if %time% LEQ 10:09:50.00 goto starpbridis_garais
rem 3.st
if %time% GEQ 10:10:00.00 if %time% LEQ 10:49:50.00 goto stunda
if %time% GEQ 10:50:00.00 if %time% LEQ 10:54:50.00 goto starpbridis_isais
rem 4.st
if %time% GEQ 10:55:00.00 if %time% LEQ 11:34:50.00 goto stunda
if %time% GEQ 11:35:00.00 if %time% LEQ 11:39:50.00 goto starpbridis_isais
rem 5.st
if %time% GEQ 11:40:00.00 if %time% LEQ 12:19:50.00 goto stunda
if %time% GEQ 12:20:00.00 if %time% LEQ 12:24:50.00 goto starpbridis_isais
rem 6.st
if %time% GEQ 12:25:00.00 if %time% LEQ 13:04:50.00 goto stunda
if %time% GEQ 13:05:00.00 if %time% LEQ 13:09:50.00 goto starpbridis_isais
rem 7.st
if %time% GEQ 13:10:00.00 if %time% LEQ 13:49:50.00 goto stunda
if %time% GEQ 13:50:00.00 if %time% LEQ 13:54:50.00 goto starpbridis_isais
rem 8.st
if %time% GEQ 13:55:00.00 if %time% LEQ 15:59:00 goto stunda_pecpusdiena
rem stundas beigušās
if %time% GEQ 16:00:00.00 goto stundu_nav

pause

:stunda
rem nircmd.exe setappvolume chrome.exe 0.45
echo.
echo Macibu stunda: %time%
echo.
NirCmd.exe /wait setappvolume spotify.exe 0
NirCmd.exe setappvolume vlc.exe 0
Echo Nogriezam skalumu!
echo.
TIMEOUT /T 50 /nobreak

goto laiks

:stunda_pecpusdiena

rem nircmd.exe setappvolume chrome.exe 0.45
echo.
echo Stundas bez starpbriza: %time%
echo.
NirCmd.exe /wait setappvolume spotify.exe 0
NirCmd.exe setappvolume vlc.exe 0
Echo Nogriezam skalumu!
echo.
TIMEOUT /T 50 /nobreak

goto laiks

:starpbridis_isais
rem NirCmd.exe setappvolume chrome.exe 1
echo.
echo Isais starpbridis: %time%
echo.
NirCmd.exe setappvolume spotify.exe 1
NirCmd.exe setappvolume vlc.exe 1
Echo Uzgriezam skalak!
echo.
TIMEOUT /T 50 /nobreak

goto laiks

:starpbridis_garais

rem NirCmd.exe setappvolume chrome.exe 1
echo.
echo Garais starpbridis: %time%
echo.
NirCmd.exe setappvolume spotify.exe 1
NirCmd.exe setappvolume vlc.exe 1
Echo Uzgriezam skalak!
echo.
TIMEOUT /T 50 /nobreak

goto laiks

:stundu_nav

rem NirCmd.exe setappvolume chrome.exe 1

ECHO.
echo NAV STUNDU!!!
ECHO.
echo Atgriezam skanu!
NirCmd.exe setappvolume spotify.exe 1
NirCmd.exe setappvolume vlc.exe 1
taskkill /im vlc.exe /t /f
Echo.
echo Beidzam darbu!!!

exit
