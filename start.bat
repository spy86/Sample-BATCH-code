@echo off

echo =======================
echo Start Install
echo =======================

::Run script to Windows Update
start /w cscript WindowsUpdate.vbs      

::Run script to silent install NOD32
start /w ESET_NOD32.bat

echo =======================
echo Installation Completed !
echo =======================

timeout /t 3
exit

