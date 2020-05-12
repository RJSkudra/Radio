@ECHO OFF

:choice
set /P c=Vai velies aktivizet [A] vai deaktivizet [D] Radio?
if /I "%c%" EQU "A" goto :Aktivizet
if /I "%c%" EQU "D" goto :Deaktivizet
goto :choice


:Aktivizet

schtasks.exe /change /tn "Radio" /enable
echo Jus esat aktivizejusi automatisko radio skalumu!
pause 
exit

:Deaktivizet

schtasks.exe /change /tn "Radio" /disable
echo Jus esat deaktivizejusi automatisko radio skalumu!
pause 
exit
