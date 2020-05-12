@echo off

REM Get day of week number, Sunday = 0

for /f "skip=2 tokens=2 delims=," %%a in ('WMIC Path Win32_LocalTime Get DayOfWeek /Format:csv') do set /a DowNum=%%a + 1


REM Convert day of week number to text abbreviation

for /f "tokens=%DowNum%" %%a in ("Sun Mon Tue Wed Thu Fri Sat") do set DOW=%%a

ECHO Sodien ir %DOW% jeb %date% !!!
rem Pirmdiena
if "%DOW%"=="Mon" (
call Radio.bat
)
rem Otrdiena
if "%DOW%"=="Tue" (
call Radio.bat
)
rem Tresdiena
if "%DOW%"=="Wed" (
call Radio.bat
)
rem Ceturtdiena
if "%DOW%"=="Thu" (
call Radio.bat
)
rem Piektdiena
if "%DOW%"=="Fri" (
call Radio.bat
)
rem Sestdiena
if "%DOW%"=="Sat" (
exit
)
rem Svetdiena
if "%DOW%"=="Sun" (
exit
)
