@echo off

echo ================================================
echo Active Microsoft Office 2013
echo ================================================


:: Script to active office 2013
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx machine

echo Done !
timeout /t 2
exit