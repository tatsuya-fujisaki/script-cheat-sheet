@echo off

javaws -uninstall

del /f /q /s %TEMP% > nul 2>&1

cd /d C:\
del *.log /f /q /s > nul 2>&1

rd /q /s "%USERPROFILE%\.oracle_jre_usage" > nul 2>&1
rd /q /s "%USERPROFILE%\.thumbnails" > nul 2>&1
rd /q /s "%USERPROFILE%\AppData\LocalLow\Sun" > nul 2>&1
rd /q /s "%USERPROFILE%\Contacts"> nul 2>&1
rd /q /s "%USERPROFILE%\Downloads" > nul 2>&1
rd /q /s "%USERPROFILE%\Favorites"> nul 2>&1
rd /q /s "%USERPROFILE%\Links" > nul 2>&1
rd /q /s "%USERPROFILE%\Music" > nul 2>&1
rd /q /s "%USERPROFILE%\OneDrive"> nul 2>&1
rd /q /s "%USERPROFILE%\Pictures" > nul 2>&1
rd /q /s "%USERPROFILE%\Saved Games"> nul 2>&1
rd /q /s "%USERPROFILE%\Searches"> nul 2>&1
rd /q /s "%USERPROFILE%\Videos"> nul 2>&1

rem Delete Visual Studio files
rd /q /s "%LOCALAPPDATA%\Microsoft\Phone Tools" > nul 2>&1
rd /q /s "%LOCALAPPDATA%\Microsoft\Team Foundation" > nul 2>&1
rd /q /s "%LOCALAPPDATA%\Microsoft\VisualStudio Services" > nul 2>&1
rd /q /s "%LOCALAPPDATA%\Microsoft\VisualStudio\12.0\ComponentModelCache" > nul 2>&1
rd /q /s "%LOCALAPPDATA%\Microsoft\VSCommon" > nul 2>&1
rd /q /s "%LOCALAPPDATA%\Microsoft\VsGraphics" > nul 2>&1
rd /q /s "%LOCALAPPDATA%\Microsoft\WebsiteCache" > nul 2>&1

rem Clear "Find" history in Visual Studio 2015 and 2013
reg delete HKCU\SOFTWARE\Microsoft\VisualStudio\14.0\Find /f > nul 2>&1
reg delete HKCU\SOFTWARE\Microsoft\VisualStudio\12.0\Find /f > nul 2>&1

rem cleanmgr /sageset:0
cleanmgr /sagerun:0

defrag /C /M /X
