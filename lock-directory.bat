cls
@ECHO OFF
title FastTechBuzz.com
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST %1% goto MDMyFolder
:CONFIRM
echo -------------------------------------------
echo -------------------------------------------
echo -------------------------------------------
echo Are you sure to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren MyFolder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo ----------------------------------------------
echo ----------------------------------------------
echo ----------------------------------------------
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== %2% goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" MyFolder
echo Folder Unlocked successfully by fasttechbuzz.com
goto End
:FAIL
echo Invalid password
goto end
:MDMyFolder
md MyFolder
echo MyFolder created successfully
goto End
:End