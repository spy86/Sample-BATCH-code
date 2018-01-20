@echo off

echo ================================================
echo Run Sysprep
echo ================================================


:: Script to run sysprep
cd c:\Windows\System32\Sysprep
sysprep /oobe /generalize /shutdown

echo Done !
timeout /t 2
exit