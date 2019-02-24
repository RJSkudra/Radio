@ECHO OFF
REM Get day of week number, Sunday = 0

for /f "skip=2 tokens=2 delims=," %%a in ('WMIC Path Win32_LocalTime Get DayOfWeek /Format:csv') do set /a DowNum=%%a + 1


REM Convert day of week number to text abbreviation

for /f "tokens=%DowNum%" %%a in ("Sun Mon Tue Wed Thu Fri Sat") do set DOW=%%a



if "%DOW%"=="Mon" (
   
rem Pirmdiena

NirCmd.exe setappvolume chrome.exe 0.1

NirCmd.exe /wait setappvolume spotify.exe 0.1

TIMEOUT /T 1
cd C:\Users\Zales\Desktop\Radio\Audio

   for %%f in (1.*) do "C:\Program Files\VideoLAN\VLC\vlc.exe" --play-and-exit %%f

cd C:\Users\Zales\Desktop\Radio
NirCmd.exe setappvolume chrome.exe 0.14

NirCmd.exe setappvolume spotify.exe 0.14

TIMEOUT /T 1

)

if "%DOW%"=="Tue" (
   
rem Otrdiena

NirCmd.exe setappvolume chrome.exe 0.1

NirCmd.exe /wait setappvolume spotify.exe 0.1

TIMEOUT /T 1

cd C:\Users\Zales\Desktop\Radio\Audio

   for %%f in (2.*) do "C:\Program Files\VideoLAN\VLC\vlc.exe" --play-and-exit %%f

cd C:\Users\Zales\Desktop\Radio
NirCmd.exe setappvolume chrome.exe 0.14
NirCmd.exe setappvolume spotify.exe 0.14
TIMEOUT /T 1

)

if "%DOW%"=="Wed" (
   
rem Tresdiena

NirCmd.exe setappvolume chrome.exe 0.1

NirCmd.exe /wait setappvolume spotify.exe 0.1

TIMEOUT /T 1

cd C:\Users\Zales\Desktop\Radio\Audio

   for %%f in (3.*) do "C:\Program Files\VideoLAN\VLC\vlc.exe" --play-and-exit %%f

cd C:\Users\Zales\Desktop\Radio
setappvolume chrome.exe 0.14
NirCmd.exe setappvolume spotify.exe 0.14

TIMEOUT /T 1

)

if "%DOW%"=="Thu" (
   
rem Ceturtdiena

NirCmd.exe setappvolume chrome.exe 0.01
NirCmd.exe /wait setappvolume spotify.exe 0.01

TIMEOUT /T 1

cd C:\Users\Zales\Desktop\Radio\Audio

   for %%f in (4.*) do "C:\Program Files\VideoLAN\VLC\vlc.exe" --play-and-exit %%f

cd C:\Users\Zales\Desktop\Radio
NirCmd.exe setappvolume chrome.exe 0.14

NirCmd.exe setappvolume spotify.exe 0.14

TIMEOUT /T 1

)

if "%DOW%"=="Fri" (
   
rem Piektdiena

NirCmd.exe setappvolume chrome.exe 0.1

NirCmd.exe /wait setappvolume spotify.exe 0.1

TIMEOUT /T 1

cd C:\Users\Zales\Desktop\Radio\Audio

   for %%f in (5.*) do "C:\Program Files\VideoLAN\VLC\vlc.exe" --play-and-exit %%f

cd C:\Users\Zales\Desktop\Radio
NirCmd.exe setappvolume chrome.exe 0.14
NirCmd.exe setappvolume spotify.exe 0.14
TIMEOUT /T 1

)

if "%DOW%"=="Sat" (
   
rem Sestdiena


)

if "%DOW%"=="Sun" (
   
rem Svetdiena


)
rem ayy