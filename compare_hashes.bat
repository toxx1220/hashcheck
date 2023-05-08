REM Author: toxx

@echo off
echo This program calculates the SHA256 Hash Value of a given File and compares it with a given Hash Value.
set /p filename= Enter Filename: 
set /p hashvalue= Enter Hashval: 

set filepath= %CD%\%filename%

echo Comparing Hashvalues...
echo:

echo ---------------------------
powershell -command "(Get-FileHash ./%filename%).Hash -eq \"%hashvalue%\""
echo ---------------------------

echo:
echo True = Hash Values match
echo False = Hash Values do not match
echo:

pause